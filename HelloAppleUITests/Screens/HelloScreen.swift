import Foundation
import XCTest

class HelloScreen: BaseScreen {
    lazy var helloLabel = findElementByLabel("helloLabel", type: "label")
    lazy var changeButton = findElementByLabel("changeButton", type: "button")

    init() {
        let app = XCUIApplication()
        let screen = app.otherElements["HelloScreen"].firstMatch
        XCTAssertTrue(screen.waitForExistence(timeout: waitTimeoutInSeconds))
    }
}
