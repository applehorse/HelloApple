import Foundation
import XCTest

let waitTimeoutInSeconds = TimeInterval(3)

protocol BaseScreen {
}

extension BaseScreen {
    func findAll(_ type: XCUIElement.ElementType) -> XCUIElementQuery {
        return app.descendants(matching: type)
    }

    func step(_ name: String, block: (XCTActivity) -> Void) {
        XCTContext.runActivity(named: name, block: block)
    }

    var app: XCUIApplication {
        return XCUIApplication()
    }

    func findElementByIdentifier(_ id: String) -> XCUIElement {

        return app.staticTexts[id]
    }

    func findElementByLabel(_ label: String, type: String) -> XCUIElement {
        var elementQuery: XCUIElementQuery!
        switch (type) {
        case "button":
            elementQuery = app.buttons
        case "label":
            elementQuery = app.staticTexts
        case "tab":
            elementQuery = app.tabs
        case "field", "text field":
            elementQuery = app.textFields
        case "secureField":
            elementQuery = app.secureTextFields
        case "textView", "text view":
            elementQuery = app.textViews
        case "view":
            elementQuery = app.otherElements
        default: elementQuery = app.otherElements
        }

        let element = elementQuery[label]
        XCTAssertTrue(element.waitForExistence(timeout: waitTimeoutInSeconds))

        return element
    }
    
    func findCellWith(tableViewId: String, cellId: String) -> XCUIElement {
        let myTable = app.tables.matching(identifier: tableViewId)
        let cell = myTable.cells.element(matching: .cell, identifier: cellId)
        XCTAssertTrue(cell.waitForExistence(timeout: waitTimeoutInSeconds))
        return cell
    }
    
    func findDialogWith(id: String) -> XCUIElement {
        let alert = app.alerts.matching(identifier: id).firstMatch
        return alert
    }
    
    func findButtonWith(id: String) -> XCUIElement {
        let  button = app.buttons.matching(identifier: id).firstMatch
        return button
    }
}
