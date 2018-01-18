//
//  KIFTests.swift
//  KiffSimpleIosAppForTestingTests
//
//  Created by Igor Gindin on 21/11/2017.
//  Copyright © 2017 Perfecto Mobile. All rights reserved.
//

import XCTest

class KIFTests: KIFTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
//    func testExample() {
//        // This is an example of a functional test case.
//        // Use XCTAssert and related functions to verify your tests produce the correct results.
//    }
//
//    func testPerformanceExample() {
//        // This is an example of a performance test case.
//        self.measure {
//            // Put the code you want to measure the time of here.
//        }
//    }
    
    func testSetDefaultText() {
        tester().tapView(withAccessibilityLabel: "Default Text")
        tester().waitForView(withAccessibilityLabel: "Some Text")
    }
    
}
