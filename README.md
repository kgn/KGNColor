# KGNColor

`KGNColor` is a collection of helpful `UIColor` extensions.

[![Release](https://img.shields.io/github/release/kgn/KGNColor.svg)](/releases)
[![License](http://img.shields.io/badge/License-MIT-lightgrey.svg)](/LICENSE)

[![Build Status](https://travis-ci.org/kgn/KGNColor.svg)](https://travis-ci.org/kgn/KGNColor)
[![Test Coverage](http://img.shields.io/badge/Tests-100%25-green.svg)]()
[![Carthage Compatible](https://img.shields.io/badge/Carthage-Compatible-4BC51D.svg)](https://github.com/Carthage/Carthage)
[![CocoaPods Version](https://img.shields.io/cocoapods/v/KGNColor.svg)](https://cocoapods.org/pods/KGNColor)
[![CocoaPods Platforms](https://img.shields.io/cocoapods/p/KGNColor.svg)](https://cocoapods.org/pods/KGNColor)

[![Twitter](https://img.shields.io/badge/Twitter-@iamkgn-55ACEE.svg)](http://twitter.com/iamkgn)
[![Follow](https://img.shields.io/github/followers/kgn.svg?style=social&label=Follow%20%40kgn)](https://github.com/kgn)
[![Star](https://img.shields.io/github/stars/kgn/KGNColor.svg?style=social&label=Star)](https://github.com/kgn/KGNColor)

## Installing

### Carthage
```
github "kgn/KGNColor"
```

### CocoaPods
```
pod 'KGNColor'
```

## Examples

### Hex Initializer
Using a hex value is often the easiest way to use the exact color from a design.
``` Swift
let tintColor = UIColor(hex: 0x2DFF5F)
```

### Components
Used this helpful tuple to get the `red`, `green`, `blue` and `alpha` values of a `UIColor`.

``` Swift
let tintColor = UIColor.brownColor()
print("red: \(tintColor.components.red)")
print("green: \(tintColor.components.green)")
print("blue: \(tintColor.components.blue)")
print("alpha: \(tintColor.components.alpha)")
```

### Invert a Color
``` Swift
let tintColor = UIColor.redColor().invert()
```

### Lighten a Color
``` Swift
let tintColor = UIColor.blueColor().lighten(0.5)
```

### Darken a Color
``` Swift
let tintColor = UIColor.greenColor().darken(0.5)
```

## Progress
- [X] Badges
- [X] Tests
- [X] Travis
- [X] Carthage
- [X] CocoaPods
- [X] Description
- [X] Documentation
- [ ] AppleTV
- [ ] AppleWatch
- [X] Prebuilt Frameworks
- [ ] Travis Test Matrix

