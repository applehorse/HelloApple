// Copyright (c) 2019 spidertracks. All rights reserved.

import XCTest
import Foundation
import Cucumberish

class CucumberishInitializer: NSObject {
    @objc class func CucumberishSwiftInit()
    {
        var application: XCUIApplication!
        
        beforeStart { () -> Void in
            application = XCUIApplication()
            //            CommonStepDefinitions.setup(application)
            HelloSteps().setup()
            //            FlightsSteps().setup()
            //            SearchAircraftSteps().setup()
            //            MapTypesSteps().setup()
            //            WeatherOverlaysSteps().setup()
            //            SpidertxtSteps().setup()
            //            SpidertxtContactSteps().setup()
            //            SpidertxtTheadSteps().setup()
            //            MoreScreenSteps().setup()
            //            SettingsScreenSteps().setup()
            //            AccountScreenSteps().setup()
        }
        
        let bundle = Bundle(for: CucumberishInitializer.self)
        Cucumberish.executeFeatures(inDirectory: "Features", from: bundle, includeTags: ["iosAuto"], excludeTags: nil)
        
        before { (scenario: CCIScenarioDefinition?) in
            application.launchArguments.append("--UITests")
            application.launch()
        }
        
        after { (scenario: CCIScenarioDefinition?) in
            application.terminate()
        }
    }
//    @objc class func setupCucumberish() {
//        var application: XCUIApplication!
//
//        beforeStart { () -> Void in
//            application = XCUIApplication()
////            CommonStepDefinitions.setup(application)
////            LoginScreenSteps().setup()
////            FlightsSteps().setup()
////            SearchAircraftSteps().setup()
////            MapTypesSteps().setup()
////            WeatherOverlaysSteps().setup()
////            SpidertxtSteps().setup()
////            SpidertxtContactSteps().setup()
////            SpidertxtTheadSteps().setup()
////            MoreScreenSteps().setup()
////            SettingsScreenSteps().setup()
////            AccountScreenSteps().setup()
//        }
//
//        let bundle = Bundle(for: CucumberishInitializer.self)
//        Cucumberish.executeFeatures(inDirectory: "mobileSpecs/specs", from: bundle, includeTags: ["iosAuto"], excludeTags: nil)
//
//        before { (scenario: CCIScenarioDefinition?) in
//            application.launchArguments.append("--UITests")
//            application.launch()
//        }
//
//        after { (scenario: CCIScenarioDefinition?) in
//            application.terminate()
//        }
//    }
}
