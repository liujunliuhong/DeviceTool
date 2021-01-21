//
//  GLDeviceType.swift
//  DeviceTool
//
//  Created by galaxy on 2021/1/21.
//

import Foundation

/*
 iPhone 12 Pro Max    428 x 926             3x
 iPhone 12 Pro        390 x 844             3x
 iPhone 12            390 x 844             3x
 iPhone 12 mini       360 x 780             3x
 
 iPhone SE 2nd        375 x 667             2x
 
 iPhone 11            414 x 896             2x
 iPhone 11 Pro        375 x 812             3x
 iPhone 11 Pro Max    414 x 896             3x
 
 iPhone XR            414 x 896             2x
 iPhone Xs Max        414 x 896             3x
 iPhone Xs            375 x 812             3x
 iPhone X             375 x 812             3x
 
 iPhone 8             375 x 667             2x
 iPhone 8 Plus        414 x 736             3x
 
 iPhone 7             375 x 667             2x
 iPhone 7 plus        414 x 736             3x
 
 iPhone 6             375 x 667             2x
 iPhone 6s            375 x 667             2x  (UI design drawings are generally based on 6s, if not, then hammer him)
 iPhone 6 Plus        414 x 736             3x
 iPhone 6s plus       414 x 736             3x
 
 iPhone SE            320 x 568             2x
 
 iPhone 5             320 x 568             2x
 iPhone 5s            320 x 568             2x
 */
public enum GLDeviceType {
    // iPhone
    case iPhone_12_Pro_Max
    case iPhone_12_Pro
    case iPhone_12
    case iPhone_12_mini
    case iPhone_SE_2nd_generation
    case iPhone_XS_Max
    case iPhone_XS
    case iPhone_XR
    case iPhone_X
    case iPhone_11
    case iPhone_11_Pro
    case iPhone_11_Pro_Max
    case iPhone_8_Plus
    case iPhone_8
    case iPhone_7_Plus
    case iPhone_7
    case iPhone_SE_1st_generation
    case iPhone_6s_Plus
    case iPhone_6s
    case iPhone_6_Plus
    case iPhone_6
    case iPhone_5s
    case iPhone_5c
    case iPhone_5
    case iPhone_4s
    case iPhone_4
    case iPhone_3GS
    case iPhone_3G
    case iPhone
    // iPod touch
    case iPod_touch_7th_generation
    case iPod_touch_6th_generation
    case iPod_touch_5th_generation
    case iPod_touch_4th_generation
    case iPod_touch_3rd_generation
    case iPod_touch_2nd_generation
    case iPod_touch
    // iPad
    case iPad
    case iPad_2
    case iPad_3rd_generation
    case iPad_4th_generation
    case iPad_5th_generation
    case iPad_6th_generation
    case iPad_7th_generation
    case iPad_8th_generation
    // iPad Air
    case iPad_Air
    case iPad_Air_2
    case iPad_Air_3rd_generation
    case iPad_Air_4th_generation
    // iPad Pro
    case iPad_Pro_9_7_inch
    case iPad_Pro_10_5_inch
    case iPad_Pro_11_inch
    case iPad_Pro_11_inch_2nd_generation
    case iPad_Pro_12_9_inch
    case iPad_Pro_12_9_inch_2nd_generation
    case iPad_Pro_12_9_inch_3rd_generation
    case iPad_Pro_12_9_inch_4th_generation
    // iPad mini
    case iPad_mini
    case iPad_mini_2
    case iPad_mini_3
    case iPad_mini_4
    case iPad_mini_5th_generation
    // AirPods
    case AirPods_1st_generation
    case AirPods_2nd_generation
    case AirPods_Pro
    // Apple TV
    case Apple_TV_1st_generation
    case Apple_TV_2nd_generation
    case Apple_TV_3rd_generation
    case Apple_TV_4th_generation
    case Apple_TV_4K
    // Apple Watch
    case Apple_Watch_1st_generation
    case Apple_Watch_Series_1
    case Apple_Watch_Series_2
    case Apple_Watch_Series_3
    case Apple_Watch_Series_4
    case Apple_Watch_Series_5
    case Apple_Watch_SE
    case Apple_Watch_Series_6
    // HomePod
    case HomePod
    // Simulator
    case simulator
}
