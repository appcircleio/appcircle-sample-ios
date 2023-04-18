//
//  AppcircleTests.swift
//  AppcircleTests
//
//  Created by Mustafa on 29.12.2021.
//

import XCTest
@testable import Appcircle

class AppcircleTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testSkipiPhone8() throws {
        let simulator = ProcessInfo.processInfo.environment["SIMULATOR_DEVICE_NAME"] ?? "No Name"
        try XCTSkipIf(simulator.contains("iPhone 8"), "Skip this test on iPhone 8*")
        XCTAssertTrue(true,"iPhone 8 Test")
    }
    
    func testSkipiPhone14() throws {
        let simulator = ProcessInfo.processInfo.environment["SIMULATOR_DEVICE_NAME"] ?? "No Name"
        try XCTSkipIf(simulator.contains("iPhone 14"), "Skip this test on iPhone 14*")
        XCTAssertTrue(true,"iPhone 14 Test")
    }

    
    func testExpectedFailure() throws {
        let thingThatFails: Bool = false
        XCTExpectFailure("Working on a fix for this problem.")
        XCTAssertTrue(thingThatFails, "This is not working right now.")
    }
        
    func testPass() throws {
        XCTAssertTrue(true, "This test should pass")
    }
    
    func testFail() throws {
        XCTAssertTrue(false,"This test should fail")
    }
    
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
