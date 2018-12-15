#
# Be sure to run `pod lib lint XUNCrashShield.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'XUNCrashShield'
  s.version          = '0.1.0'
  s.summary          = 'A short description of XUNCrashShield.'
  s.description      = <<-DESC
    A tiny shield for crash online. 一个防止线上 80% crash 的轻微的防御盾。
                       DESC

  s.homepage         = 'https://github.com/ListenXunInNight/XUNCrashShield'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Xun' => 'listenxun@gmail.com' }
  s.source           = { :git => 'https://github.com/ListenXunInNight/XUNCrashShield.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = ['XUNCrashShield/Classes/**/**']
  
  # s.resource_bundles = {
  #   'XUNCrashShield' => ['XUNCrashShield/Assets/*.png']
  # }

s.public_header_files = ['XUNCrashShield/Classes/**/**.h', 'XUNCrashShield/Classes/**.h']
end
