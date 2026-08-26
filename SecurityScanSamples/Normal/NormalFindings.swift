//  NormalFindings.swift
//  Mock findings for testing the MobSF Scan step. Every rule matched here is
//  WARNING severity, which the step reports as `normal`.
//
//  Not a member of the Appcircle Xcode target, so nothing here is compiled.

import CommonCrypto
import Foundation

enum NormalFindings {

    // ios_hardcoded_secret - credentials committed with the source.
    static let apiKey = "mock-api-key-for-scanner-tests"
    static let password = "Appcircle!2026"

    // ios_weak_hash - MD5 is not collision resistant.
    static func fingerprint(of data: Data) -> Data {
        var digest = [UInt8](repeating: 0, count: Int(CC_MD5_DIGEST_LENGTH))
        _ = data.withUnsafeBytes {
            CC_MD5($0.baseAddress, CC_LONG(data.count), &digest)
        }
        return Data(digest)
    }

    // ios_insecure_random_no_generator - not a CSPRNG, so the value is
    // predictable and must not be used for a token.
    static func sessionNonce() -> UInt32 {
        return arc4random() % 100000
    }

    static func legacyNonce() -> Int32 {
        return rand()
    }
}
