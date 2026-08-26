//  LowFindings.swift
//  Mock findings for testing the MobSF Scan step. Every rule matched here is
//  INFO severity, which the step reports as `low`.
//
//  Not a member of the Appcircle Xcode target, so nothing here is compiled.

import Foundation
import UIKit

enum LowFindings {

    // ios_uiwebview - UIWebView is deprecated and no longer maintained,
    // WKWebView is the supported replacement.
    static func makeLegacyWebView(frame: CGRect) -> UIWebView {
        return UIWebView(frame: frame)
    }
}
