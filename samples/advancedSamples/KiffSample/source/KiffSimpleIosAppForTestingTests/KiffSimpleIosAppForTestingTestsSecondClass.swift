//
//  KiffSimpleIosAppForTestingTestsSecondClass.swift
//  KiffSimpleIosAppForTestingTests
//
//  Created by Igor Gindin on 22/11/2017.
//  Copyright © 2017 Perfecto Mobile. All rights reserved.
//

import XCTest
import UIKit

class KiffSimpleIosAppForTestingTestsSecondClass: KIFTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    // No screenshots
    func testCheckSliderLabelDefaultValue() {
        var tempLabel = UILabel()
        tempLabel = tester().waitForView(withAccessibilityLabel: "label") as! UILabel
        
        XCTAssertEqual(Int(tempLabel.text!), Int(50))
    }
    
    // No screenshots
    func testEmptyLabel() {
        
        var tempLabel = UILabel()
        tempLabel = tester().waitForView(withAccessibilityLabel: "Something") as! UILabel
        
        tester().tapView(withAccessibilityLabel: "New Text")
        sleep(2)
        
        XCTAssertEqual(tempLabel.text, "")
    }
    
    // Two screenshots
    func testReturnDefaultValue() {
        tester().tapView(withAccessibilityLabel: "New Text")
        sleep(2)
        
        screenshot().captureScreenshot(withDescription: "First screenshot KiffSimpleIosAppForTestingTestsSecondClass#testReturnDefaultValue")
        
        tester().tapView(withAccessibilityLabel: "Default Text")
        sleep(2)
        
        screenshot().captureScreenshot(withDescription: "KiffSimpleIosAppForTestingTestsSecondClass#testReturnDefaultValue Second screenshot")
        
        tester().waitForView(withAccessibilityLabel: "Something")
    }
}
