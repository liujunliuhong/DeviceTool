
Pod::Spec.new do |s|
  s.name                       = 'GLDeviceTool'
  s.homepage                   = 'https://github.com/liujunliuhong/DeviceTool'
  s.summary                    = 'UIDevice扩展，方便获取设备的一些属性'
  s.description                = 'UIDevice扩展，方便获取设备的一些属性'
  s.author                     = { 'liujunliuhong' => '1035841713@qq.com' }
  s.version                    = '1.0.0'
  s.source                     = { :git => 'https://github.com/liujunliuhong/DeviceTool.git', :tag => s.version.to_s }
  s.platform                   = :ios, '8.0'
  s.license                    = { :type => 'MIT', :file => 'LICENSE' }
  s.module_name                = 'GLDeviceTool'
  s.swift_version              = '5.0'
  s.ios.deployment_target      = '8.0'
  s.requires_arc               = true
  s.static_framework           = true
  s.source_files               = 'Sources/*.swift'
end
