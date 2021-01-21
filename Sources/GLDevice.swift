//
//  GLDevice.swift
//  DeviceTool
//
//  Created by galaxy on 2021/1/21.
//

import Foundation

public struct GLDevice {
    public let description: String
    public let identifiers: [String]
    public init(identifiers: [String], description: String) {
        self.description = description
        self.identifiers = identifiers
    }
}


// https://www.theiphonewiki.com/wiki/Models#iPhone


// MARK: - AirPods
fileprivate let _All_AirPods: [GLDeviceType: GLDevice] = [
    .AirPods_1st_generation: GLDevice(identifiers: ["AirPods1,1"], description: "AirPods (1st generation)"),
    .AirPods_2nd_generation: GLDevice(identifiers: ["AirPods2,1"], description: "AirPods (2nd generation)"),
    .AirPods_Pro: GLDevice(identifiers: ["iProd8,1"], description: "AirPods Pro")
]

// MARK: - Apple TV
fileprivate let _All_Apple_TV: [GLDeviceType: GLDevice] = [
    .Apple_TV_1st_generation: GLDevice(identifiers: ["AppleTV1,1"], description: "Apple TV (1st generation)"),
    .Apple_TV_2nd_generation: GLDevice(identifiers: ["AppleTV2,1"], description: "Apple TV (2nd generation)"),
    .Apple_TV_3rd_generation: GLDevice(identifiers: ["AppleTV3,1", "AppleTV3,2"], description: "Apple TV (3rd generation)"),
    .Apple_TV_4th_generation: GLDevice(identifiers: ["AppleTV5,3"], description: "Apple TV (4th generation)"),
    .Apple_TV_4K: GLDevice(identifiers: ["AppleTV6,2"], description: "Apple TV 4K")
]


// MARK: - Apple Watch
fileprivate let _All_Apple_Watch: [GLDeviceType: GLDevice] = [
    .Apple_Watch_1st_generation: GLDevice(identifiers: ["Watch1,1", "Watch1,2"], description: "Apple Watch (1st generation)"),
    .Apple_Watch_Series_1: GLDevice(identifiers: ["Watch2,6", "Watch2,7"], description: "Apple Watch Series 1"),
    .Apple_Watch_Series_2: GLDevice(identifiers: ["Watch2,3", "Watch2,4"], description: "Apple Watch Series 2"),
    .Apple_Watch_Series_3: GLDevice(identifiers: ["Watch3,1", "Watch3,2", "Watch3,3", "Watch3,4"], description: "Apple Watch Series 3"),
    .Apple_Watch_Series_4: GLDevice(identifiers: ["Watch4,1", "Watch4,2", "Watch4,3", "Watch4,4"], description: "Apple Watch Series 4"),
    .Apple_Watch_Series_5: GLDevice(identifiers: ["Watch5,1", "Watch5,2", "Watch5,3", "Watch5,4"], description: "Apple Watch Series 5"),
    .Apple_Watch_SE: GLDevice(identifiers: ["Watch5,9", "Watch5,10", "Watch5,11", "Watch5,12"], description: "Apple Watch SE"),
    .Apple_Watch_Series_6: GLDevice(identifiers: ["Watch6,1", "Watch6,2", "Watch6,3", "Watch6,4"], description: "Apple Watch Series 6")
]


// MARK: - HomePod
fileprivate let _All_HomePod: [GLDeviceType: GLDevice] = [
    .HomePod: GLDevice(identifiers: ["AudioAccessory1,1", "AudioAccessory1,2"], description: "HomePod")
]


// MARK: - iPad
fileprivate let _All_iPad: [GLDeviceType: GLDevice] = [
    .iPad: GLDevice(identifiers: ["iPad1,1"], description: "iPad"),
    .iPad_2: GLDevice(identifiers: ["iPad2,1", "iPad2,2", "iPad2,3", "iPad2,4"], description: "iPad 2"),
    .iPad_3rd_generation: GLDevice(identifiers: ["iPad3,1", "iPad3,2", "iPad3,3"], description: "iPad (3rd generation)"),
    .iPad_4th_generation: GLDevice(identifiers: ["iPad3,4", "iPad3,5", "iPad3,6"], description: "iPad (4th generation)"),
    .iPad_5th_generation: GLDevice(identifiers: ["iPad6,11", "iPad6,12"], description: "iPad (5th generation)"),
    .iPad_6th_generation: GLDevice(identifiers: ["iPad7,5", "iPad7,6"], description: "iPad (6th generation)"),
    .iPad_7th_generation: GLDevice(identifiers: ["iPad7,11", "iPad7,12"], description: "iPad (7th generation)"),
    .iPad_8th_generation: GLDevice(identifiers: ["iPad11,6", "iPad11,7"], description: "iPad (8th generation)")
]


// MARK: - iPad Air
fileprivate let _All_iPad_Air: [GLDeviceType: GLDevice] = [
    .iPad_Air: GLDevice(identifiers: ["iPad4,1", "iPad4,2", "iPad4,3"], description: "iPad Air"),
    .iPad_Air_2: GLDevice(identifiers: ["iPad5,3", "iPad5,4"], description: "iPad Air 2"),
    .iPad_Air_3rd_generation: GLDevice(identifiers: ["iPad11,3", "iPad11,4"], description: "iPad Air (3rd generation)"),
    .iPad_Air_4th_generation: GLDevice(identifiers: ["iPad13,1", "iPad13,2"], description: "iPad Air (4th generation)")
]


// MARK: - iPad Pro
fileprivate let _All_iPad_Pro: [GLDeviceType: GLDevice] = [
    .iPad_Pro_12_9_inch: GLDevice(identifiers: ["iPad6,7", "iPad6,8"], description: "iPad Pro (12.9-inch)"),
    .iPad_Pro_9_7_inch: GLDevice(identifiers: ["iPad6,3", "iPad6,4"], description: "iPad Pro (9.7-inch)"),
    .iPad_Pro_12_9_inch_2nd_generation: GLDevice(identifiers: ["iPad7,1", "iPad7,2"],  description: "iPad Pro (12.9-inch) (2nd generation)"),
    .iPad_Pro_10_5_inch: GLDevice(identifiers: ["iPad7,3", "iPad7,4"], description: "iPad Pro (10.5-inch)"),
    .iPad_Pro_11_inch: GLDevice(identifiers: ["iPad8,1", "iPad8,2", "iPad8,3", "iPad8,4"], description: "iPad Pro (11-inch)"),
    .iPad_Pro_12_9_inch_3rd_generation: GLDevice(identifiers: ["iPad8,5", "iPad8,6", "iPad8,7", "iPad8,8"], description: "iPad Pro (12.9-inch) (3rd generation)"),
    .iPad_Pro_11_inch_2nd_generation: GLDevice(identifiers: ["iPad8,9", "iPad8,10"], description: "iPad Pro (11-inch) (2nd generation)"),
    .iPad_Pro_12_9_inch_4th_generation: GLDevice(identifiers: ["iPad8,11", "iPad8,12"], description: "iPad Pro (12.9-inch) (4th generation)")
]


// MARK: - iPad mini
fileprivate let _All_iPad_mini: [GLDeviceType: GLDevice] = [
    .iPad_mini: GLDevice(identifiers: ["iPad2,5", "iPad2,6", "iPad2,7"], description: "iPad mini"),
    .iPad_mini_2: GLDevice(identifiers: ["iPad4,4", "iPad4,5", "iPad4,6"], description: "iPad mini 2"),
    .iPad_mini_3: GLDevice(identifiers: ["iPad4,7", "iPad4,8", "iPad4,9"], description: "iPad mini 3"),
    .iPad_mini_4: GLDevice(identifiers: ["iPad5,1", "iPad5,2"], description: "iPad mini 4"),
    .iPad_mini_5th_generation: GLDevice(identifiers: ["iPad11,1", "iPad11,2"], description: "iPad mini (5th generation)")
]


// MARK: - iPod touch
fileprivate let _All_iPod_touch: [GLDeviceType: GLDevice] = [
    .iPod_touch: GLDevice(identifiers: ["iPod1,1"], description: "iPod touch"),
    .iPod_touch_2nd_generation: GLDevice(identifiers: ["iPod2,1"], description: "iPod touch (2nd generation)"),
    .iPod_touch_3rd_generation: GLDevice(identifiers: ["iPod3,1"], description: "iPod touch (3rd generation)"),
    .iPod_touch_4th_generation: GLDevice(identifiers: ["iPod4,1"], description: "iPod touch (4th generation)"),
    .iPod_touch_5th_generation: GLDevice(identifiers: ["iPod5,1"], description: "iPod touch (5th generation)"),
    .iPod_touch_6th_generation: GLDevice(identifiers: ["iPod7,1"], description: "iPod touch (6th generation)"),
    .iPod_touch_7th_generation: GLDevice(identifiers: ["iPod9,1"], description: "iPod touch (7th generation)")
]


// MARK: - iPhone
fileprivate let _All_iPhone: [GLDeviceType: GLDevice] = [
    .iPhone: GLDevice(identifiers: ["iPhone1,1"], description: "iPhone"),
    .iPhone_3G: GLDevice(identifiers: ["iPhone1,2"], description: "iPhone 3G"),
    .iPhone_3GS: GLDevice(identifiers: ["iPhone2,1"], description: "iPhone 3GS"),
    .iPhone_4: GLDevice(identifiers: ["iPhone3,1", "iPhone3,2", "iPhone3,3"], description: "iPhone 4"),
    .iPhone_4s: GLDevice(identifiers: ["iPhone4,1"], description: "iPhone 4S"),
    .iPhone_5: GLDevice(identifiers: ["iPhone5,1", "iPhone5,2"], description: "iPhone 5"),
    .iPhone_5c: GLDevice(identifiers: ["iPhone5,3", "iPhone5,4"], description: "iPhone 5c"),
    .iPhone_5s: GLDevice(identifiers: ["iPhone6,1", "iPhone6,2"], description: "iPhone 5s"),
    .iPhone_6: GLDevice(identifiers: ["iPhone7,2"], description: "iPhone 6"),
    .iPhone_6_Plus: GLDevice(identifiers: ["iPhone7,1"], description: "iPhone 6 Plus"),
    .iPhone_6s: GLDevice(identifiers: ["iPhone8,1"], description: "iPhone 6s"),
    .iPhone_6s_Plus: GLDevice(identifiers: ["iPhone8,2"], description: "iPhone 6s Plus"),
    .iPhone_SE_1st_generation: GLDevice(identifiers: ["iPhone8,4"], description: "iPhone SE (1st generation)"),
    .iPhone_7: GLDevice(identifiers: ["iPhone9,1", "iPhone9,3"], description: "iPhone 7"),
    .iPhone_7_Plus: GLDevice(identifiers: ["iPhone9,2", "iPhone9,4"], description: "iPhone 7 Plus"),
    .iPhone_8: GLDevice(identifiers: ["iPhone10,1", "iPhone10,4"], description: "iPhone 8"),
    .iPhone_8_Plus: GLDevice(identifiers: ["iPhone10,2", "iPhone10,5"], description: "iPhone 8 Plus"),
    .iPhone_X: GLDevice(identifiers: ["iPhone10,3", "iPhone10,6"], description: "iPhone X"),
    .iPhone_XR: GLDevice(identifiers: ["iPhone11,8"], description: "iPhone XR"),
    .iPhone_XS: GLDevice(identifiers: ["iPhone11,2"], description: "iPhone XS"),
    .iPhone_XS_Max: GLDevice(identifiers: ["iPhone11,6", "iPhone11,4"], description: "iPhone XS Max"),
    .iPhone_11: GLDevice(identifiers: ["iPhone12,1"], description: "iPhone 11"),
    .iPhone_11_Pro: GLDevice(identifiers: ["iPhone12,3"], description: "iPhone 11 Pro"),
    .iPhone_11_Pro_Max: GLDevice(identifiers: ["iPhone12,5"], description: "iPhone 11 Pro Max"),
    .iPhone_SE_2nd_generation: GLDevice(identifiers: ["iPhone12,8"], description: "iPhone SE (2nd generation)"),
    .iPhone_12_mini: GLDevice(identifiers: ["iPhone13,1"], description: "iPhone 12 mini"),
    .iPhone_12: GLDevice(identifiers: ["iPhone13,2"], description: "iPhone 12"),
    .iPhone_12_Pro: GLDevice(identifiers: ["iPhone13,3"], description: "iPhone 12 Pro"),
    .iPhone_12_Pro_Max: GLDevice(identifiers: ["iPhone13,4"], description: "iPhone 12 Pro Max")
]


// MARK: - Simulator
fileprivate let _All_Simulator: [GLDeviceType: GLDevice] = [
    .simulator: GLDevice(identifiers: ["i386", "x86_64"], description: "Simulator")
]




public let GL_All_Devices: [GLDeviceType: GLDevice] = _All_AirPods
    .merging(_All_Apple_TV) { (current, _) in current }
    .merging(_All_Apple_Watch) { (current, _) in current }
    .merging(_All_HomePod) { (current, _) in current }
    .merging(_All_iPad) { (current, _) in current }
    .merging(_All_iPad_Air) { (current, _) in current }
    .merging(_All_iPad_Pro) { (current, _) in current }
    .merging(_All_iPad_mini) { (current, _) in current }
    .merging(_All_iPod_touch) { (current, _) in current }
    .merging(_All_iPhone) { (current, _) in current }
    .merging(_All_Simulator) { (current, _) in current }
