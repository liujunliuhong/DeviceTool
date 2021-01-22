# DeviceTool
`UIDevice`扩展，方便获取设备的一些属性，该库会随着Apple每年发布新设备而更新

# 特点
- 支持`iPhone`、`iPod touch`、`iPad`、`iPad Air`、`iPad Pro`、`iPad mini`、`AirPods`、`Apple TV`、`Apple Watch`、`HomePod`、`Simulator`，几乎包含了所有Apple设备
- 屏幕宽、高获取
- 是否是刘海屏手机获取
- 设备信息获取（比如获取手机机器名:`iPhone 6s`）
- iOS 13 之后，苹果对状态栏高度、样式、是否隐藏状态栏这几个属性的获取进行了修改，所以还对这几个属性的获取进行了封装

# 相关属性

属性|解释|
:-:|:-:|
`gl_width` | 屏幕宽 | 
`gl_height` | 屏幕高 |
`gl_machineName` | 机器名(比如`iPhone X`) |
`gl_info` | 设备信息 |
`gl_isSimulator` | 是否是模拟器 |
`gl_isNotchiPhone` | 是否是刘海屏手机 |
`gl_statusBarHeight` | 状态栏高度 |
`gl_statusBarStyle` | 状态栏样式 |
`gl_isStatusBarHidden` | 状态栏是否隐藏 |
`gl_homeIndicatorHeight` | 虚拟Home键高度 |

## 安装
### 手动
Clone代码，把`Sources`文件夹拖入项目就可以使用了

### CocoaPods
```
pod 'GLDeviceTool'
```

如果提示未找到，先执行`pod repo update`，再执行`pod install`。理论上支持`iOS 8.0`以上系统

## 使用(使用方法非常简单)
比如获取设备机器名
```
let machineName = UIDevice.gl_machineName
```
其余属性请看上方表格
## 更新记录(倒叙)

### 2、1.1.0（2021.01.21）
- 代码优化

### 1、1.0.0（2020.11.02）
- 发布首个版本

## 补充
该仓库会不断进行优化，在使用过程中，有任何建议或问题，欢迎提issue，或者通过邮箱1035841713@qq.com联系我<br>
喜欢就star❤️一下吧
