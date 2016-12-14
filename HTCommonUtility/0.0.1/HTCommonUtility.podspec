# coding: utf-8
#
#  Be sure to run `pod spec lint HTCommonUtility.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#
 
Pod::Spec.new do |s|
 
 
  s.name         = "HTCommonUtility"
  s.version      = "0.0.1"
  s.summary      = "公共工具类库."
 
  s.description  = <<-DESC
                   公共工具类库
                   DESC
 
  s.homepage     = "https://git.hz.netease.com/mobile/HTCommonUtils"
 
  s.license      = "MIT"
 
  s.author       = { "hzwangliping" => "hzwangliping@corp.netease.com" }

  s.source       = { :git => 'https://git.hz.netease.com/git/mobile/HTCommonUtils.git' }
 
  s.platform     = :ios, "6.0"
 
  s.ios.deployment_target = "6.0"
 
  s.source_files  = "HTCommonUtility/HTCommonUtility/*.{h,m}",
  "HTCommonUtility/HTCommonUtility/HTSafeObserver/*.{h,m}"
 
  s.requires_arc = true
 
  s.public_header_files = "HTCommonUtility/HTCommonUtility/*.h"
  
  s.dependency "CocoaLumberjack", '2.0.1'
 
end
