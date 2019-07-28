import Foundation
import XCTest
import Cucumberish

class HelloSteps {
    func setup() {
        
        Given("The label text is \"Hello\""){ (args, userInfo) -> Void in
            XCTAssertEqual("Hello", HelloScreen().helloLabel.label)
        }
        
        When("I press the \"Change\" button"){ (args, userInfo) -> Void in
            HelloScreen().changeButton.tap()
        }
        
        Then("I should see the label text \"Changed\""){ (args, userInfo) -> Void in
            XCTAssertEqual("Changed", HelloScreen().helloLabel.label)
        }
        
    }

}
