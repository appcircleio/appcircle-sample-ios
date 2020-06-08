//
//  AppcircleUITests.m
//  AppcircleUITests
//
//  Created by Dogan Ekici on 4.10.2019.
//  Copyright © 2019 Dogan Ekici. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface AppcircleUITests : XCTestCase

@end

@implementation AppcircleUITests

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.

    // In UI tests it is usually best to stop immediately when a failure occurs.
    self.continueAfterFailure = NO;

    // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
}

- (void)testExample {
    // UI tests must launch the application that they test.
    XCUIApplication *app = [[XCUIApplication alloc] init];
    [app launch];
    
    XCTAssertTrue(app.buttons[@"Next Page"].exists);
    [app.buttons[@"Next Page"] tap];
    XCTAssertTrue(app.staticTexts[@"Appcircle.io"].exists);
    
    sleep(1);
    
    XCTAttachment *attachment = [XCTAttachment attachmentWithScreenshot:[app screenshot]];
    attachment.name = @"Attachment";
    attachment.lifetime = XCTAttachmentLifetimeKeepAlways;
    [self addAttachment:attachment];
}

- (void)testLaunchPerformance {
    if (@available(macOS 10.15, iOS 13.0, tvOS 13.0, *)) {
        // This measures how long it takes to launch your application.
        [self measureWithMetrics:@[XCTOSSignpostMetric.applicationLaunchMetric] block:^{
            [[[XCUIApplication alloc] init] launch];
        }];
    }
}

@end
