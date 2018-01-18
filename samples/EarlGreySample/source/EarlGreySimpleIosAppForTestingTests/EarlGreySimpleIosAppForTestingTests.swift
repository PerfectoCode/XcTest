//
//  EarlGreySimpleIosAppForTestingTests.swift
//  EarlGreySimpleIosAppForTestingTests
//
//  Created by Igor Gindin on 23/11/2017.
//  Copyright © 2017 Perfecto Mobile. All rights reserved.
//

import XCTest
import EarlGrey
//@testable import EarlGreySimpleIosAppForTesting

class EarlGreySimpleIosAppForTestingTests: XCTestCase {
    
    let confpath = GREYConfiguration.sharedInstance().value(forConfigKey: kGREYConfigKeyArtifactsDirLocation) as! String
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
        
    }
    
    
    func testStaticTextExists()  {
        
        sleep(2)
        
        EarlGrey.select(elementWithMatcher: grey_text("EarlGrey Tests")).assert(grey_sufficientlyVisible())
        
    }
    
    // Two screenshots
    func testEnterNewText() {
        EarlGrey.select(elementWithMatcher: grey_accessibilityLabel("label")).perform(grey_typeText("BlaBlaBla"))
        
        print("[ " + confpath + " ]")
        
        var screenshot = GREYScreenshotUtil.takeScreenshotForAppStore()
        var filename = "BeforeClick_" + String(describing: EarlGreySimpleIosAppForTestingTests.self) + "#" + #function + ".png"
        GREYScreenshotUtil.saveImage(asPNG: screenshot, toFile: filename, inDirectory: confpath)
        EarlGrey.select(elementWithMatcher: grey_text("EarlGrey Tests")).assert(grey_sufficientlyVisible())
        
        EarlGrey.select(elementWithMatcher: grey_text("New Text")).perform(grey_tap())
        
        sleep(2)
        
        screenshot = GREYScreenshotUtil.takeScreenshotForAppStore()
        filename = String(describing: EarlGreySimpleIosAppForTestingTests.self) + "#" + #function + "_AfterClick.png"
        GREYScreenshotUtil.saveImage(asPNG: screenshot, toFile: filename, inDirectory: confpath)
        EarlGrey.select(elementWithMatcher: grey_text("EarlGrey Tests")).assert(grey_sufficientlyVisible())
        
        EarlGrey.select(elementWithMatcher: grey_text("BlaBlaBla")).assert(grey_sufficientlyVisible())
        
        EarlGrey.select(elementWithMatcher: grey_text("Default Text")).perform(grey_tap())
    }
    
    
    // Intentionally failure test
    // Screenshot saved automatically
    func testFailureTest() {
        EarlGrey.select(elementWithMatcher: grey_text("New Text")).perform(grey_tap())
        
        EarlGrey.select(elementWithMatcher: grey_text("Fixed text")).assert(grey_sufficientlyVisible())
        
        sleep(2)
        
//        defer {
            EarlGrey.select(elementWithMatcher: grey_text("Default Text")).perform(grey_tap())
//        }
    }
    
    func testReturnDefaultText() {
        EarlGrey.select(elementWithMatcher: grey_text("New Text")).perform(grey_tap())
        sleep(2)
        EarlGrey.select(elementWithMatcher: grey_text("Default Text")).perform(grey_tap())
        
        sleep(2)
        
        EarlGrey.select(elementWithMatcher: grey_text("Fixed text")).assert(grey_sufficientlyVisible())
    }
}
