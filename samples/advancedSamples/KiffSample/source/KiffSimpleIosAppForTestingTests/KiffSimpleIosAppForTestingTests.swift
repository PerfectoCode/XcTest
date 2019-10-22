//
//  KiffSimpleIosAppForTestingTests.swift
//  KiffSimpleIosAppForTestingTests
//
//  Created by Igor Gindin on 21/11/2017.
//  Copyright © 2017 Perfecto Mobile. All rights reserved.
//

import XCTest
//@testable import KiffSimpleIosAppForTesting
import UIKit

class KiffSimpleIosAppForTestingTests: KIFTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    //One screenshot, successful test
    func testSetDefaultText() {
        tester().tapView(withAccessibilityLabel: "Default Text")
        
        screenshot().captureScreenshot(withDescription: "KiffSimpleIosAppForTestingTests#testSetDefaultText")
        
        tester().waitForView(withAccessibilityLabel: "Something")
    }
    
    //One screenshot, successful test
    func testEnterNewText() {
        tester().enterText("Anything", intoViewWithAccessibilityLabel: "Test Field")
        tester().tapView(withAccessibilityLabel: "New Text")
        sleep(2)
        
        screenshot().captureScreenshot(withDescription: "KiffSimpleIosAppForTestingTests#testEnterNewText")
        
        tester().waitForView(withAccessibilityLabel: "Anything")
    }
    
    // Intentionally failed test
    // Screenshot taken automatically when enviroment variable KIF_SCREENSHOTS set
    func testFailedTest() {
        tester().enterText("Anything", intoViewWithAccessibilityLabel: "Test Field")
        tester().tapView(withAccessibilityLabel: "New Text")
        sleep(2)
        tester().waitForView(withAccessibilityLabel: "Incorrect text")
    }
    
    // No screenshots
    func testSetSliderValue() {

        var tempSlider = UISlider()

        tempSlider = tester().waitForView(withAccessibilityLabel: "slider") as! UISlider

        tempSlider.setValue(30, animated: false)
        
        sleep(2)
        
        XCTAssertEqual(tempSlider.value, Float(30))
    }
}
