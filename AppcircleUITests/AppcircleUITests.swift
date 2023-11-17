//
//  AppcircleUITests.swift
//  AppcircleUITests
//
//  Created by Mustafa on 29.12.2021.
//

import XCTest

extension XCUIElement {

    func clearAndEnterText(_ text: String) {
        guard let stringValue = self.value as? String else {
            XCTFail("Tried to clear and enter text into a non string value")
            return
        }

        self.tap()

        let deleteString = stringValue.map { _ in "\u{8}" }.joined(separator: "")

        self.typeText(deleteString)
        self.typeText(text)
    }

}

class AppcircleUITests: XCTestCase {

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    override func tearDownWithError() throws {
    }

    func testFizz() throws {
        let app = XCUIApplication()
        app.launch()
        
        let numberCell = app.textFields["Enter a number"]
        let resultText = app.staticTexts["result"]
        numberCell.tap()
        numberCell.typeText("3")
        XCTAssertEqual(resultText.label,"Fizz")
    }
    
    func testBuzz() throws {
        let app = XCUIApplication()
        app.launch()
        
        let numberCell = app.textFields["Enter a number"]
        let resultText = app.staticTexts["result"]

        numberCell.tap()
        numberCell.clearAndEnterText("15")
        XCTAssertEqual(resultText.label,"FizzBuzz")
    }
    
    func testOthers() throws {
        let app = XCUIApplication()
        app.launch()
        
        let numberCell = app.textFields["Enter a number"]
        let resultText = app.staticTexts["result"]

        numberCell.tap()
        numberCell.clearAndEnterText("4")
        XCTAssertEqual(resultText.label,"4")
    }
    
//    func testFail() throws {
//        let app = XCUIApplication()
//        app.launch()
//        
//        let numberCell = app.textFields["Enter a number"]
//        let resultText = app.staticTexts["result"]
//
//        numberCell.tap()
//        numberCell.clearAndEnterText("7")
//        XCTAssertEqual(resultText.label,"Fizz")
//    }

    func testDataAttachment() throws {
        let text = "Appcircle"
        let attachment = XCTAttachment(data: Data(text.utf8))
        attachment.lifetime = .keepAlways
        add(attachment)
    }
    
    func testJsonAttachment() throws {
        let json = "{\"hello\":\"world\"}"
        let attachment = XCTAttachment(data: Data(json.utf8), uniformTypeIdentifier: "public.json")
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}

