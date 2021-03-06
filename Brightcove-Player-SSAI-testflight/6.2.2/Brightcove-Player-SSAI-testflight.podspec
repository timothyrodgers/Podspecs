Pod::Spec.new do |s|

  s.name         = "Brightcove-Player-SSAI-testflight"
  s.version      = "6.2.2"
  s.summary      = "SSAI Plugin for Brightcove Player SDK for iOS"
  s.homepage     = "https://docs.brightcove.com/en/player/mobile-sdks/"
  s.license      = { :type => 'Commercial', :file => 'LICENSE.md' }
  s.author       = { "Brightcove" => "brightcove-native-player-sdks@googlegroups.com" }

  s.source       = { :git => "https://github.com/timothyrodgers/brightcove-player-sdk-ios-ssai.git", :tag => "v#{s.version}" }
  
  s.default_subspec = 'default'
   
  s.ios.deployment_target = '9.0'
  s.tvos.deployment_target = '9.0'
  
  s.subspec "default" do |ss|
  
    ss.dependency 'Brightcove-Player-Core-testflight/default', '6.2.2'
    
    ss.ios.vendored_framework   = "ios/static/BrightcovSSAI.framework"
    ss.ios.weak_framework       = 'WebKit'
    
    ss.tvos.vendored_framework  = "tvos/BrightcoveSSAI.framework"

  end

  s.subspec "dynamic" do |ss|
  
    ss.dependency 'Brightcove-Player-Core-testflight/dynamic', '6.2.2'
    
    ss.ios.vendored_framework   = "ios/dynamic/BrightcoveSSAI.framework"
    ss.ios.weak_framework       = 'WebKit'
    
    ss.tvos.vendored_framework  = "tvos/BrightcoveSSAI.framework"
    
  end

  s.libraries = 'xml2.2'
  
end
