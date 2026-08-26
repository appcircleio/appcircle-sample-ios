# Security scan samples

Deliberately insecure code, used to exercise the **MobSF Scan** workflow step's
pipeline gate. Each directory holds findings of exactly one severity, so a single
level can be tested at a time by pointing the step's **Source Path** at it.

Nothing here is a member of any Xcode target, so none of it is compiled and the
app build is unaffected. mobsfscan walks the file system, so it still reads it.

| Directory | Severity | Reported as | Rules matched |
| --- | --- | --- | --- |
| `Critical/` | `ERROR` | `critical` | `ios_aes_ecb`, `ios_biometric_acl`, `ios_file_no_special`, `ios_self_signed_ssl` |
| `Normal/` | `WARNING` | `normal` | `ios_hardcoded_secret`, `ios_insecure_random_no_generator`, `ios_weak_hash` |
| `Low/` | `INFO` | `low` | `ios_uiwebview` |

## Test matrix

The gate fails the build on a finding at the selected level **or worse**, so `low`
is the strictest setting and `critical` the loosest.

| Source Path | Fail Build On | Expected |
| --- | --- | --- |
| `SecurityScanSamples/Critical` | `critical` | fails |
| `SecurityScanSamples/Normal` | `critical` | **passes** |
| `SecurityScanSamples/Normal` | `normal` | fails |
| `SecurityScanSamples/Low` | `normal` | **passes** |
| `SecurityScanSamples/Low` | `low` | fails |
| `SecurityScanSamples` | `none` | passes, reports everything |

Every row above was verified by running the step against a clean clone of this
branch.

One caveat about `low`: mobsfscan reports informational "missing best practice"
findings for any iOS tree, 5 to 8 of them here, and those count towards the `low`
level. So `low` fails everywhere and has no pass case, which is why the matrix
tests it by confirming it fails where `normal` passed. `critical` and `normal` are
the levels with a meaningful pass and fail pair.
