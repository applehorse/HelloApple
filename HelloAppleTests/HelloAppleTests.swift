//
//  HelloAppleTests.swift
//  HelloAppleTests
//
//  Created by William Ma on 5/07/19.
//  Copyright © 2019 William Ma. All rights reserved.
//

import XCTest
@testable import HelloApple

class HelloAppleTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExampleUnitTest() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        print("unit test in testExample ")
        let william = Person(name:"William")
        XCTAssertTrue(william.name == "William" )
    }
}
