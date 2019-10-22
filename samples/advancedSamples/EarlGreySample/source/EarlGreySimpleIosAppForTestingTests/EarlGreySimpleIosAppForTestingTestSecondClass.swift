//
//  EarlGreySimpleIosAppForTestingTestSecondClass.swift
//  EarlGreySimpleIosAppForTestingTests
//
//  Created by Igor Gindin on 24/12/2017.
//  Copyright © 2017 Perfecto Mobile. All rights reserved.
//

import XCTest
import EarlGrey

class EarlGreySimpleIosAppForTestingTestSecondClass: XCTestCase {
    
    let confpath = GREYConfiguration.sharedInstance().value(forConfigKey: kGREYConfigKeyArtifactsDirLocation) as! String
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    // Single screenshot
    func testSelectFirst() {
        EarlGrey.select(elementWithMatcher: grey_text("First")).perform(grey_tap())
        
        sleep(2)
        
        let screenshot = GREYScreenshotUtil.takeScreenshotForAppStore()
        let filename = String(describing: EarlGreySimpleIosAppForTestingTestSecondClass.self) + "#" + #function + ".png"
        GREYScreenshotUtil.saveImage(asPNG: screenshot, toFile: filename, inDirectory: confpath)
        
        EarlGrey.select(elementWithMatcher: grey_text("Left")).assert(grey_sufficientlyVisible())
    }
    
    func testSelectSecond() {
        EarlGrey.select(elementWithMatcher: grey_text("Second")).perform(grey_tap())
        
        sleep(2)
        
        EarlGrey.select(elementWithMatcher: grey_text("Right")).assert(grey_sufficientlyVisible())
    }
    
}
