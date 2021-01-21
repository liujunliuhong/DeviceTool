//
//  UIDevice+GLExtension.swift
//  SwiftTool
//
//  Created by galaxy on 2020/10/17.
//  Copyright © 2020 yinhe. All rights reserved.
//

import Foundation
import UIKit

extension UIDevice {
    /// 屏幕宽
    public static var gl_width: CGFloat {
        return UIScreen.main.bounds.size.width
    }
    
    /// 屏幕高
    public static var gl_height: CGFloat {
        return UIScreen.main.bounds.size.height
    }
    
    /// 设备机器名字，例如`iPhone 7 Plus`.
    public static var gl_machineName: String {
        let machine = UIDevice._machine
        var machineName = machine
        for (_, device) in GL_All_Devices.map({ $1 }).enumerated() {
            if device.identifiers.contains(machine) {
                machineName = device.description
                break
            }
        }
        return machineName
    }
    
    /// 设备基本信息
    public static var gl_info: String {
        return
            "\n"
            +
            "*******************************************************************"
            + "\n"
            + "Sysname:          \(UIDevice._sysname)"
            + "\n"
            + "Release:          \(UIDevice._release)"
            + "\n"
            + "Version:          \(UIDevice._version)"
            + "\n"
            + "Machine:          \(UIDevice._machine)"
            + "\n"
            + "SystemVersion:    \(UIDevice.current.systemVersion)"
            + "\n"
            + "MachineName:      \(UIDevice.gl_machineName)"
            + "\n"
            + "DeviceName:       \(UIDevice.current.name)"
            + "\n"
            + "*******************************************************************"
    }
    
    /// 是否是模拟器
    public static var gl_isSimulator: Bool {
        let machine = UIDevice._machine
        var isSimulator: Bool = false
        for (_, device) in GL_All_Devices.enumerated() {
            if device.key == .simulator && device.value.identifiers.contains(machine) {
                isSimulator = true
                break
            }
        }
        return isSimulator
    }
    
    /// 是否是刘海屏手机，兼容真机和模拟器
    public static var gl_isNotchiPhone: Bool {
        var isNotchiPhone: Bool = false
        if #available(iOS 11.0, *) {
            if let delegate = UIApplication.shared.delegate, let _window = delegate.window, let window = _window {
                isNotchiPhone = window.safeAreaInsets.bottom > 0
            }
        }
        return isNotchiPhone
    }
    
    /// 状态栏高度
    public static var gl_statusBarHeight: CGFloat {
        var statusBarHeight: CGFloat = 20.0
        if #available(iOS 13.0, *) {
            if let delegate = UIApplication.shared.delegate,
               let _window = delegate.window,
               let window = _window,
               let windowScene = window.windowScene,
               let statusBarManager = windowScene.statusBarManager {
                statusBarHeight = statusBarManager.statusBarFrame.height
            } else {
                statusBarHeight = UIApplication.shared.statusBarFrame.height
            }
        } else {
            statusBarHeight = UIApplication.shared.statusBarFrame.height
        }
        return statusBarHeight
    }
    
    /// 是否隐藏了状态栏
    public static var gl_isStatusBarHidden: Bool {
        var isStatusBarHidden: Bool = false
        if #available(iOS 13.0, *) {
            if let delegate = UIApplication.shared.delegate,
               let _window = delegate.window,
               let window = _window,
               let windowScene = window.windowScene,
               let statusBarManager = windowScene.statusBarManager {
                isStatusBarHidden = statusBarManager.isStatusBarHidden
            } else {
                isStatusBarHidden = UIApplication.shared.isStatusBarHidden
            }
        } else {
            isStatusBarHidden = UIApplication.shared.isStatusBarHidden
        }
        return isStatusBarHidden
    }
    
    /// 状态栏样式
    public static var gl_statusBarStyle: UIStatusBarStyle {
        var statusBarStyle: UIStatusBarStyle = .default
        if #available(iOS 13.0, *) {
            if let delegate = UIApplication.shared.delegate,
               let _window = delegate.window,
               let window = _window,
               let windowScene = window.windowScene,
               let statusBarManager = windowScene.statusBarManager {
                statusBarStyle = statusBarManager.statusBarStyle
            } else {
                statusBarStyle = UIApplication.shared.statusBarStyle
            }
        } else {
            statusBarStyle = UIApplication.shared.statusBarStyle
        }
        return statusBarStyle
    }
    
    /// 虚拟Home键高度，兼容真机和模拟器
    public static var gl_homeIndicatorHeight: CGFloat {
        var homeIndicatorHeight: CGFloat = .zero
        if #available(iOS 11.0, *) {
            if let delegate = UIApplication.shared.delegate, let _window = delegate.window, let window = _window {
                homeIndicatorHeight = window.safeAreaInsets.bottom
            }
        }
        return homeIndicatorHeight
    }
}

extension UIDevice {
    fileprivate static var _sys: utsname {
        var sys: utsname = utsname()
        uname(&sys)
        return sys
    }
    
    fileprivate static var _machine: String {
        var sys = UIDevice._sys
        return withUnsafePointer(to: &sys.machine) {
            $0.withMemoryRebound(to: CChar.self, capacity: 1) { ptr in String(validatingUTF8: ptr) } ?? UIDevice.current.systemVersion
        }
    }
    fileprivate static var _release: String {
        var sys = UIDevice._sys
        return withUnsafePointer(to: &sys.release) {
            $0.withMemoryRebound(to: CChar.self, capacity: 1) { ptr in String(validatingUTF8: ptr) } ?? UIDevice.current.systemVersion
        }
    }
    fileprivate static var _version: String {
        var sys = UIDevice._sys
        return withUnsafePointer(to: &sys.version) {
            $0.withMemoryRebound(to: CChar.self, capacity: 1) { ptr in String(validatingUTF8: ptr) } ?? UIDevice.current.systemVersion
        }
    }
    fileprivate static var _sysname: String {
        var sys = UIDevice._sys
        return withUnsafePointer(to: &sys.sysname) {
            $0.withMemoryRebound(to: CChar.self, capacity: 1) { ptr in String(validatingUTF8: ptr) } ?? UIDevice.current.systemVersion
        }
    }
    fileprivate static var _nodename: String {
        var sys = UIDevice._sys
        return withUnsafePointer(to: &sys.nodename) {
            $0.withMemoryRebound(to: CChar.self, capacity: 1) { ptr in String(validatingUTF8: ptr) } ?? UIDevice.current.systemVersion
        }
    }
}




//    /// 刘海高度，兼容真机和模拟器。仅仅只是刘海高度，不是状态栏的高度
//    public static var gl_notchHeight: CGFloat {
//        let _notch_iPhone_Sizes: [CGSize] = [CGSize(width: 375.0, height: 812.0),
//                                             CGSize(width: 812.0, height: 375.0),
//                                             //
//                                             CGSize(width: 414.0, height: 896.0),
//                                             CGSize(width: 896.0, height: 414.0),
//                                             //
//                                             CGSize(width: 390.0, height: 844.0),
//                                             CGSize(width: 844.0, height: 390.0),
//                                             //
//                                             CGSize(width: 428.0, height: 926.0),
//                                             CGSize(width: 926.0, height: 428.0),
//                                             //
//                                             CGSize(width: 360.0, height: 780.0),
//                                             CGSize(width: 780.0, height: 360.0)]
//
//        let _notch_iPhone_Types: [GLDeviceType] = [.iPhone_X,
//                                                   .iPhone_XR,
//                                                   .iPhone_XS,
//                                                   .iPhone_XS_Max,
//                                                   .iPhone_11,
//                                                   .iPhone_11_Pro,
//                                                   .iPhone_11_Pro_Max,
//                                                   .iPhone_12,
//                                                   .iPhone_12_mini,
//                                                   .iPhone_12_Pro,
//                                                   .iPhone_12_Pro_Max]
//
//        let machine = UIDevice._machine
//        var height: CGFloat = .zero
//
//        for (_, device) in GL_All_Devices.enumerated() {
//            if device.key == .simulator && device.value.identifiers.contains(machine) {
//                isSimulator = true
//                break
//            }
//        }
//
//
//        for (_, m) in GLDeviceMachines.enumerated() {
//            var isFind: Bool = false
//            switch m {
//                case .description(let identifiers, let deviceType, _):
//                    if deviceType == .simulator && identifiers.contains(machine) && GL_Notch_iPhone_Sizes.contains(UIScreen.main.bounds.size) {
//                        if !UIApplication.shared.statusBarOrientation.isPortrait {
//                            height = 0.0
//                        } else {
//                            height = 44.0
//                        }
//                        isFind = true
//                    } else if GL_Notch_iPhone_Types.contains(deviceType) && identifiers.contains(machine) {
//                        if !UIApplication.shared.statusBarOrientation.isPortrait {
//                            height = 0.0
//                        } else {
//                            height = 44.0
//                        }
//                        isFind = true
//                    }
//            }
//            if isFind {
//                break
//            }
//        }
//        return height
//    }
