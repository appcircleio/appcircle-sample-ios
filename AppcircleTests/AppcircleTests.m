//
//  AppcircleTests.m
//  AppcircleTests
//
//  Created by Dogan Ekici on 4.10.2019.
//  Copyright © 2019 Dogan Ekici. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface AppcircleTests : XCTestCase

@end

@implementation AppcircleTests

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testArrayCount {
    NSArray *array = [[NSArray alloc] initWithObjects:@"First",@"Second", nil];
    XCTAssertEqual(array.count, 2);
}

- (void)testArrayFirstObject {
    NSArray *array = [[NSArray alloc] initWithObjects:@"First",@"Second", nil];
    XCTAssertEqual(array.firstObject, @"First");
}

- (void)testArrayLastObject {
    NSArray *array = [[NSArray alloc] initWithObjects:@"First",@"Second", nil];
    XCTAssertEqual(array.lastObject, @"Second");
}

- (void)testType {
    NSArray *array = [[NSArray alloc] initWithObjects:@"First",@"Second", nil];
    XCTAssert([array isKindOfClass:[NSArray class]]);
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
