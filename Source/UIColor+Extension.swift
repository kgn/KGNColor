//
//  UIColor+Hex.swift
//  UIColor+Hex
//
//  Created by David Keegan on 9/24/14.
//  Copyright (c) 2014 David Keegan. All rights reserved.
//

import UIKit

extension UIColor {

    /**
    Initializes and returns a color object using the specified opacity and hex values.

    - Parameter hex: The hex value of the color object, specified as a hexadecimal integer.
    - Parameter alpha: The opacity value of the color object, specified as a value from 0.0 to 1.0.

    - Returns: An initialized color object.
    */
    public convenience init(hex: Int, alpha: CGFloat = 1) {
        self.init(
            red: CGFloat((hex & 0xFF0000) >> 16)/255.0,
            green: CGFloat((hex & 0xFF00) >> 8)/255.0,
            blue: CGFloat((hex & 0xFF))/255.0,
            alpha: alpha
        )
    }

    /**
    Returns the values of the color components (including alpha) associated with the color object.

    - Returns: A tuple of the `red`, `green`, `blue` and `alpha` components of the color object.
    */
    public var components: (red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat) {
        let components = CGColorGetComponents(self.CGColor)
        if CGColorGetNumberOfComponents(self.CGColor) == 2 {
            return (components[0], components[0], components[0], components[1])
        }
        return (components[0], components[1], components[2], components[3])
    }

    /**
    Invert the value of a color object.

    - Returns: An inverted color object.
    */
    public func invert() -> UIColor{
        let components = self.components
        return UIColor(red: 1-components.red, green: 1-components.green, blue: 1-components.blue, alpha: components.alpha)
    }

    /**
    Lighten the brightness and saturation of a a color object.

    - Parameter value: The value lighten a color object by.

    - Returns: A lightened color object.
    */
    public func lighten(value: CGFloat) -> UIColor{
        var hue: CGFloat = 0, saturation: CGFloat = 0, brightness: CGFloat = 0, alpha: CGFloat = 0
        self.getHue(&hue, saturation: &saturation, brightness: &brightness, alpha: &alpha)
        return UIColor(hue: hue, saturation: saturation*(1-value), brightness: brightness*(1+value), alpha: alpha)
    }

    /**
    Darken the brightness and saturation of a a color object.

    - Parameter value: The value darken a color object by.

    - Returns: A darkened color object.
    */
    public func darken(value: CGFloat) -> UIColor{
        var hue: CGFloat = 0, saturation: CGFloat = 0, brightness: CGFloat = 0, alpha: CGFloat = 0
        self.getHue(&hue, saturation: &saturation, brightness: &brightness, alpha: &alpha)
        return UIColor(hue: hue, saturation: saturation*(1+value), brightness: brightness*(1-value), alpha: alpha)
    }

}
