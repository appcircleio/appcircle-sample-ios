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
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testFizz() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        
        let numberCell = app.textFields["Enter a number"]
        let resultText = app.staticTexts["result"]
        numberCell.tap()
        numberCell.typeText("3")
        XCTAssertEqual(resultText.label,"Fizz")
    }
    
    func testBuzz() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        
        let numberCell = app.textFields["Enter a number"]
        let resultText = app.staticTexts["result"]

        numberCell.tap()
        numberCell.clearAndEnterText("15")
        XCTAssertEqual(resultText.label,"FizzBuzz")
    }
    
    func testOthers() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        
        let numberCell = app.textFields["Enter a number"]
        let resultText = app.staticTexts["result"]

        numberCell.tap()
        numberCell.clearAndEnterText("4")
        XCTAssertEqual(resultText.label,"4")
    }
    
    func testFail() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        
        let numberCell = app.textFields["Enter a number"]
        let resultText = app.staticTexts["result"]

        numberCell.tap()
        numberCell.clearAndEnterText("7")
        XCTAssertEqual(resultText.label,"Fizz")
    }

    func testDataAttachment() throws {
        let app = XCUIApplication()
        app.launch()
        let text = "Appcircle"
        let attachment = XCTAttachment(data: Data(text.utf8))
        attachment.lifetime = .keepAlways
        add(attachment)
    }
    
    func testJsonAttachment() throws {
        let app = XCUIApplication()
        app.launch()
        let json = "{\"hello\":\"world\"}"
        let attachment = XCTAttachment(data: Data(json.utf8),uniformTypeIdentifier: "public.json")
        attachment.lifetime = .keepAlways
        add(attachment)
    }


}
