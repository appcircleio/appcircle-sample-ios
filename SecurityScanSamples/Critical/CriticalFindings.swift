//  CriticalFindings.swift
//  Mock findings for testing the MobSF Scan step. Every rule matched here is
//  ERROR severity, which the step reports as `critical`.
//
//  This directory is deliberately NOT a member of the Appcircle Xcode target,
//  so nothing here is compiled. mobsfscan walks the file system, so it still
//  reads it.

import Foundation
import LocalAuthentication
import Security

enum CriticalFindings {

    // ios_tls3_not_used - obsolete TLS version pinned on the session.
    static func makeSession() -> URLSession {
        let configuration = URLSessionConfiguration.default
        configuration.tlsMinimumSupportedProtocolVersion = .TLSv10
        return URLSession(configuration: configuration)
    }

    // ios_file_no_special - the token is written with file protection disabled.
    static func persistToken(_ token: String, at url: URL) throws {
        try token.write(to: url, atomically: true, encoding: .utf8)
        try FileManager.default.setAttributes(
            [.protectionKey: URLFileProtection.noFileProtection],
            ofItemAtPath: url.path)
    }

    // ios_biometric_acl - biometryAny keeps the entry usable after the
    // enrolled set changes, so adding a finger or face still unlocks it.
    static func makeAccessControl() -> SecAccessControl? {
        return SecAccessControlCreateWithFlags(nil, kSecAttrAccessibleWhenUnlocked, .biometryAny, nil)
    }
}
