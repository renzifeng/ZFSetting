Pod::Spec.new do |s|
  s.name             = "ZFSetting"
  s.version          = "0.0.1"
  s.summary          = "An easy setting"
  s.homepage         = "https://github.com/renzifeng/ZFSetting"
  s.license          = 'MIT'
  s.author           = { "renzifeng" => "zifeng1300@gmail.com" }
  s.source           = { :git => "https://github.com/renzifeng/ZFSetting.git", :tag => s.version.to_s }
  s.platform     = :ios, '7.0'
  s.requires_arc = true
  s.source_files = 'ZFSetting/**/*.{h,m}'

end
