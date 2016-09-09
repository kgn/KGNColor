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
        XCTAssertEqual(UIColor(hex: 0xFF0000), UIColor.red)
        XCTAssertEqual(UIColor(hex: 0x00FF00), UIColor.green)
        XCTAssertEqual(UIColor(hex: 0x0000FF), UIColor.blue)
    }

    func testHexAlpha() {
        XCTAssertEqual(UIColor(hex: 0xFF0000, alpha: 0.5), UIColor.red.withAlphaComponent(0.5))
        XCTAssertEqual(UIColor(hex: 0x00FF00, alpha: 0.5), UIColor.green.withAlphaComponent(0.5))
        XCTAssertEqual(UIColor(hex: 0x0000FF, alpha: 0.5), UIColor.blue.withAlphaComponent(0.5))
    }

    func testInvert() {
        XCTAssertEqual(UIColor.red.inverted, UIColor(red: 0, green: 1, blue: 1, alpha: 1))
        XCTAssertEqual(UIColor.green.inverted, UIColor(red: 1, green: 0, blue: 1, alpha: 1))
        XCTAssertEqual(UIColor.blue.inverted, UIColor(red: 1, green: 1, blue: 0, alpha: 1))
    }

    func testLighten() {
        XCTAssertEqual(UIColor.gray.lighten(by: 0.5), UIColor(red: 0.75, green: 0.75, blue: 0.75, alpha: 1))
        XCTAssertEqual(UIColor.red.lighten(by: 0.5), UIColor(red: 1, green: 0.5, blue: 0.5, alpha: 1))
        XCTAssertEqual(UIColor.green.lighten(by: 0.5), UIColor(red: 0.5, green: 1, blue: 0.5, alpha: 1))
        XCTAssertEqual(UIColor.blue.lighten(by: 0.5), UIColor(red: 0.5, green: 0.5, blue: 1, alpha: 1))
    }

    func testDarken() {
        XCTAssertEqual(UIColor.gray.darken(by: 0.5), UIColor(red: 0.25, green: 0.25, blue: 0.25, alpha: 1))
        XCTAssertEqual(UIColor.red.darken(by: 0.5), UIColor(red: 0.5, green: 0, blue: 0, alpha: 1))
        XCTAssertEqual(UIColor.green.darken(by: 0.5), UIColor(red: 0, green: 0.5, blue: 0, alpha: 1))
        XCTAssertEqual(UIColor.blue.darken(by: 0.5), UIColor(red: 0, green: 0, blue: 0.5, alpha: 1))
    }

    func testComponentsGray() {
        let color = UIColor.gray.withAlphaComponent(0.3)
        XCTAssertEqual(color.components.red, 0.5)
        XCTAssertEqual(color.components.green, 0.5)
        XCTAssertEqual(color.components.blue, 0.5)
        XCTAssertEqual(color.components.alpha, 0.3)
    }

    func testComponentsBrown() {
        let color = UIColor.brown.withAlphaComponent(0.6)
        XCTAssertEqual(color.components.red, 0.6)
        XCTAssertEqual(color.components.green, 0.4)
        XCTAssertEqual(color.components.blue, 0.2)
        XCTAssertEqual(color.components.alpha, 0.6)
    }

    func testRandomColor() {
        XCTAssertNotEqual(UIColor.random, UIColor.random)
        XCTAssertNotEqual(UIColor.random(alpha: 0.5), UIColor.random(alpha: 0.5))

        let alpha: CGFloat = 0.45
        let colorWithAlpha = UIColor.random(alpha: alpha)
        XCTAssertEqual(colorWithAlpha.components.alpha, alpha)

        let color = UIColor.random
        XCTAssertEqual(color.components.alpha, 1)
    }
    
}
