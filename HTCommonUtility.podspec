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
  s.version      = "0.0.2"
  s.summary      = "公共工具类库."
 
  s.description  = <<-DESC
                   公共工具类库
                   DESC
 
  s.homepage     = "https://github.com/NEYouFan/HTCommonUtility"
 
  s.license      = "MIT"
 
  s.author       = { "netease" }
 
  s.source       = { :git => "https://github.com/NEYouFan/HTCommonUtility.git", :tag => s.version.to_s }

  s.platform     = :ios, "6.0"
 
  s.ios.deployment_target = "6.0"
 
  s.source_files  = "HTCommonUtility/HTCommonUtility/*.{h,m}",\
  "HTCommonUtility/HTCommonUtility/HTSafeObserver/*.{h,m}"
 
  s.requires_arc = true
 
  s.public_header_files = "HTCommonUtility/HTCommonUtility/*.h", 
  "HTCommonUtility/HTCommonUtility/HTSafeObserver/*.h"
  
  s.dependency "CocoaLumberjack"
 
end
