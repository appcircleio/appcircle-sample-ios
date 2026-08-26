//  CriticalFindings.m
//  Objective-C mock findings, all ERROR severity, reported as `critical`.
//  Not a member of any Xcode target.

#import <Foundation/Foundation.h>
#import <CommonCrypto/CommonCryptor.h>

@implementation CriticalFindings

// ERROR - AES in ECB mode encrypts identical blocks identically.
- (void)encryptWithECB:(NSData *)payload key:(NSData *)key {
    size_t moved = 0;
    CCCrypt(kCCEncrypt, kCCAlgorithmAES, kCCOptionECBMode,
            key.bytes, key.length, NULL,
            payload.bytes, payload.length, NULL, 0, &moved);
}

// A real weakness, pinning the session to TLS 1.0, but mobsfscan's
// ios_tls3_not_used rule is Swift only, so this one is not reported.
- (NSURLSession *)legacySession {
    NSURLSessionConfiguration *configuration =
        [NSURLSessionConfiguration defaultSessionConfiguration];
    configuration.TLSMinimumSupportedProtocolVersion = TLSv10;
    return [NSURLSession sessionWithConfiguration:configuration];
}

// ERROR - accepts any server certificate, so TLS gives no MITM protection.
- (void)configureStream:(CFReadStreamRef)stream {
    NSDictionary *settings = @{
        (id)kCFStreamSSLAllowsExpiredCertificates : @YES,
        (id)kCFStreamSSLAllowsAnyRoot : @YES
    };
    CFReadStreamSetProperty(stream, kCFStreamPropertySSLSettings,
                            (CFTypeRef)settings);
}

@end
