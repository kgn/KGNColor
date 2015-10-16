# KGNColor

`KGNColor` is a collection of helpful `UIColor` extensions.

[![iOS 8.0+](http://img.shields.io/badge/iOS-8.0%2B-blue.svg)]()
[![Xcode 7.0](http://img.shields.io/badge/Xcode-7.0-blue.svg)]()
[![Swift 2.0](http://img.shields.io/badge/Swift-2.0-blue.svg)]()
[![Release](http://img.shields.io/github/release/kgn/UIColorCategories.svg)](/releases)
[![Build Status](http://img.shields.io/badge/License-MIT-lightgrey.svg)](/LICENSE)

[![Build Status](https://travis-ci.org/kgn/UIColorCategories.svg)](https://travis-ci.org/kgn/UIColorCategories)
[![Carthage Compatible](https://img.shields.io/badge/Carthage-Compatible-4BC51D.svg)](https://github.com/Carthage/Carthage)
[![CocoaPods Version](https://img.shields.io/cocoapods/v/KGNColor.svg)](https://cocoapods.org/pods/KGNColor)
[![CocoaPods Version](https://img.shields.io/cocoapods/v/KGNColor.svg)](https://cocoapods.org/pods/KGNColor)
[![CocoaPods Platforms](https://img.shields.io/cocoapods/p/KGNColor.svg)](https://cocoapods.org/pods/KGNColor)

[![Twitter](https://img.shields.io/badge/Twitter-@iamkgn-55ACEE.svg)](http://twitter.com/iamkgn)

## Installing

### Carthage

Add `KGNColor` to your `Cartfile`.
```
github "kgn/KGNColor"
```

### CocoaPods

*TODO*

## Examples

### Hex Initializer
Using a hex value is often the easiest way to use the exact color from a design.
``` Swift
let tintColor = UIColor(hex: 0x2DFF5F)
```

### Components
Used this helpful tuple to get the `red`, `green`, `blue` and `alpha` values of a `UIColor`.

``` Swift
let tintColor = UIColor(hex: 0x2DFF5F)
print("red: \(tintColor.components.red)")
print("red: \(tintColor.components.green)")
print("red: \(tintColor.components.blue)")
```

### Invert a Color
``` Swift
let tintColor = UIColor(hex: 0x2DFF5F)
print("inverted tint: \(tintColor.testInvert())")
```

### Lighten a Color
``` Swift
let tintColor = UIColor(hex: 0x2DFF5F)
print("lightened tint: \(tintColor.lighten(0.5))")
```

### Darken a Color
``` Swift
let tintColor = UIColor(hex: 0x2DFF5F)
print("lightened tint: \(tintColor.darken(0.5))")
```

TODO:
- [X] Travis
- [X] Badges
- [X] Tests
- [X] Carthage
- [ ] CocoaPods
- [X] Description
- [ ] Documentation
