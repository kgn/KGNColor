//
//  KGNColorTests.swift
//  KGNColorTests
//
//  Created by David Keegan on 10/12/15.
//  Copyright © 2015 David Keegan. All rights reserved.
//

import XCTest
@testable import KGNColor

class KGNColorTests: XCTestCase {
    
    func testExampleHex() {
        XCTAssertEqual(UIColor(hex: 0xFF0000), UIColor.redColor())
        XCTAssertEqual(UIColor(hex: 0x00FF00), UIColor.greenColor())
        XCTAssertEqual(UIColor(hex: 0x0000FF), UIColor.blueColor())
    }

    func testExampleHexAlpha() {
        XCTAssertEqual(UIColor(hex: 0xFF0000, alpha: 0.5), UIColor.redColor().colorWithAlphaComponent(0.5))
        XCTAssertEqual(UIColor(hex: 0x00FF00, alpha: 0.5), UIColor.greenColor().colorWithAlphaComponent(0.5))
        XCTAssertEqual(UIColor(hex: 0x0000FF, alpha: 0.5), UIColor.blueColor().colorWithAlphaComponent(0.5))
    }

    func testExampleLightenColor() {
        XCTAssertEqual(UIColor.grayColor().lightenColor(0.5), UIColor(red: 0.75, green: 0.75, blue: 0.75, alpha: 1))
        XCTAssertEqual(UIColor.orangeColor().lightenColor(0.6), UIColor(red: 1, green: 0.8, blue: 0.6, alpha: 1))
        XCTAssertEqual(UIColor.purpleColor().lightenColor(0.7), UIColor(red: 0.85, green: 0.595, blue: 0.85, alpha: 1))
    }

    func testExampleDarkenColor() {
        XCTAssertEqual(UIColor.grayColor().darkenColor(0.5), UIColor(red: 0.25, green: 0.25, blue: 0.25, alpha: 1))
        XCTAssertEqual(UIColor.orangeColor().darkenColor(0.6), UIColor(red: 0.4, green: 0.2, blue: 0, alpha: 1))
        XCTAssertEqual(UIColor.purpleColor().darkenColor(0.3), UIColor(red: 0.35, green: 0, blue: 0.35, alpha: 1))
    }
    
}
