# Appcircle Sample App for Native iOS Builds
This is a sample SwiftUI app for testing the iOS build, test and distribution functionality in Appcircle.

## Requirements
- Xcode 27 or later
- iOS 17.0 or later
- CocoaPods 1.16 or later

## Project Structure
| Path | Description |
| --- | --- |
| `Appcircle.xcworkspace` | Workspace to open and build. It contains the app project and the CocoaPods project. |
| `Appcircle` | SwiftUI app that shows the FizzBuzz result for the entered number. |
| `FizzBuzzKit` | Local Swift package (SPM) that holds the FizzBuzz logic and its unit tests. |
| `AppcircleTests` | Unit test samples (passed, failed, skipped, expected failure and performance tests). |
| `AppcircleUITests` | UI test samples and test attachments. |
| `Podfile` | CocoaPods dependencies. `Pods/` is not committed; run `pod install` before building. |

## Building Locally
```bash
pod install
xcodebuild test -workspace Appcircle.xcworkspace -scheme Appcircle -destination 'platform=iOS Simulator,name=iPhone 17'
```

The `Appcircle` scheme runs the app unit tests, the UI tests and the `FizzBuzzKit` package tests.

> [!NOTE]
> Some tests fail or are skipped on purpose (for example `testFail` and `testExpectedFailure`) to demonstrate how Appcircle reports test results.

## Using the Appcircle Build Module
You can find more information about the Appcircle Build Module and how to connect a Git repository in the [Appcircle Documentation](https://docs.appcircle.io/build/).

## Contribution
You can contribute to this repository with fixes and feature updates that do not deviate from the original purpose of the app, which is to demonstrate how the Appcircle Build Module is used.

## Reporting an Issue / Reaching Us
If you encounter any issues related with the app in this repository, you can raise an issue here.
If you have any other issues or questions about Appcircle, you can contact us via our [contact form on Appcircle.io](https://appcircle.io/support) or join our Slack community at [slack.appcircle.io](https://slack.appcircle.io)
