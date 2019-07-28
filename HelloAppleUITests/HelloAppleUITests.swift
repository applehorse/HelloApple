//
//  HelloAppleUITests.swift
//  HelloAppleUITests
//
//  Created by William Ma on 5/07/19.
//  Copyright © 2019 William Ma. All rights reserved.
//

import XCTest

class HelloAppleUITests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()


        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExampleUITest() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        print("run UITest")


        let labelElement = XCUIApplication().staticTexts["helloLabel"]
        XCTAssertTrue(labelElement.exists)
        let buttonElement =  XCUIApplication().buttons["changeButton"]
        XCTAssertTrue(buttonElement.exists)
        XCTAssertEqual("Hello", labelElement.label, "The label doesn't match 'Hello'")

        buttonElement.tap()

        XCTAssertEqual("Changed", labelElement.label)


    }

}
