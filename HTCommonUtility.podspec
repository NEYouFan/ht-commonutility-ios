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
  s.version      = "0.0.4"
  s.summary      = "公共工具类库."

  s.description  = <<-DESC
                   公共工具类库
                   DESC

  s.homepage     = "https://github.com/NEYouFan/ht-commonutility-ios"

  s.license      = "MIT"

  s.author       = { "netease" => "taozeyu890217@126.com"}

  s.source       = { :git => "https://github.com/NEYouFan/ht-commonutility-ios.git", :tag => s.version.to_s }

  s.platform     = :ios, "6.0"

  s.ios.deployment_target = "6.0"

  s.source_files  = "HTCommonUtility/HTCommonUtility/*.{h,m}"

  s.requires_arc = true

  s.public_header_files = "HTCommonUtility/HTCommonUtility/*.h"

  s.dependency "CocoaLumberjack"

end
