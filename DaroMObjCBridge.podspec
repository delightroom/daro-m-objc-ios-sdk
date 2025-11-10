Pod::Spec.new do |spec|
  spec.name         = 'DaroMObjCBridge'
  spec.version      = '0.0.4'
  spec.summary      = 'Objective-C Bridge for DaroM iOS SDK'
  spec.description  = <<-DESC
                      Objective-C compatible wrapper for DaroM iOS SDK.
                      Provides native Objective-C interfaces for all DaroM ad formats.
                      DESC
  spec.homepage     = 'https://github.com/delightroom/daro-m-objc-ios-sdk'
  spec.license      = { :type => 'Commercial', :text => 'Copyright (c) Delightroom. All rights reserved.' }
  spec.author       = { 'Delightroom' => 'dev@delightroom.co.kr' }
  spec.source       = {
    :http => "https://github.com/delightroom/daro-m-objc-ios-sdk/releases/download/#{spec.version}/DaroMObjCBridge.xcframework.zip"
  }

  spec.platform              = :ios
  spec.ios.deployment_target = '13.0'
  spec.swift_version         = '5.0'

  spec.resource_bundles = {
    'DaroMObjCBridgeResources' => ['DaroMObjCBridge.xcframework/ios-arm64/DaroMObjCBridge.framework/PrivacyInfo.xcprivacy']
  }

  spec.vendored_frameworks = 'DaroMObjCBridge.xcframework'

  # DaroMObjCBridge is a dynamic framework that links to DaroM (also dynamic)
  # We need to declare DaroM as a dependency
  spec.dependency 'DaroMAds', '1.1.45-beta'
end
