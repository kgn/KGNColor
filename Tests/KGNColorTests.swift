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
    
    func testHex() {
        XCTAssertEqual(UIColor(hex: 0xFF0000), UIColor.redColor())
        XCTAssertEqual(UIColor(hex: 0x00FF00), UIColor.greenColor())
        XCTAssertEqual(UIColor(hex: 0x0000FF), UIColor.blueColor())
    }

    func testHexAlpha() {
        XCTAssertEqual(UIColor(hex: 0xFF0000, alpha: 0.5), UIColor.redColor().colorWithAlphaComponent(0.5))
        XCTAssertEqual(UIColor(hex: 0x00FF00, alpha: 0.5), UIColor.greenColor().colorWithAlphaComponent(0.5))
        XCTAssertEqual(UIColor(hex: 0x0000FF, alpha: 0.5), UIColor.blueColor().colorWithAlphaComponent(0.5))
    }

    func testInvert() {
        XCTAssertEqual(UIColor.redColor().invert(), UIColor(red: 0, green: 1, blue: 1, alpha: 1))
        XCTAssertEqual(UIColor.blueColor().invert(), UIColor(red: 1, green: 1, blue: 0, alpha: 1))
        XCTAssertEqual(UIColor.brownColor().invert(), UIColor(red: 0.4, green: 0.6, blue: 0.8, alpha: 1))
    }

    func testLighten() {
        XCTAssertEqual(UIColor.grayColor().lighten(0.5), UIColor(red: 0.75, green: 0.75, blue: 0.75, alpha: 1))
        XCTAssertEqual(UIColor.orangeColor().lighten(0.6), UIColor(red: 1, green: 0.8, blue: 0.6, alpha: 1))
        XCTAssertEqual(UIColor.purpleColor().lighten(0.7), UIColor(red: 0.85, green: 0.595, blue: 0.85, alpha: 1))
    }

    func testDarken() {
        XCTAssertEqual(UIColor.grayColor().darken(0.5), UIColor(red: 0.25, green: 0.25, blue: 0.25, alpha: 1))
        XCTAssertEqual(UIColor.orangeColor().darken(0.6), UIColor(red: 0.4, green: 0.2, blue: 0, alpha: 1))
        XCTAssertEqual(UIColor.purpleColor().darken(0.3), UIColor(red: 0.35, green: 0, blue: 0.35, alpha: 1))
    }

    func testComponentsGray() {
        let color = UIColor.grayColor().colorWithAlphaComponent(0.3)
        XCTAssertEqual(color.components.red, 0.5)
        XCTAssertEqual(color.components.green, 0.5)
        XCTAssertEqual(color.components.blue, 0.5)
        XCTAssertEqual(color.components.alpha, 0.3)
    }

    func testComponentsBrown() {
        let color = UIColor.brownColor().colorWithAlphaComponent(0.6)
        XCTAssertEqual(color.components.red, 0.6)
        XCTAssertEqual(color.components.green, 0.4)
        XCTAssertEqual(color.components.blue, 0.2)
        XCTAssertEqual(color.components.alpha, 0.6)
    }
    
}
