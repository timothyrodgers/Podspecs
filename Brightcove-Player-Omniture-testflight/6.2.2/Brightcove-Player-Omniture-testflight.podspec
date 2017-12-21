Pod::Spec.new do |s|

  s.name         = "Brightcove-Player-Omniture-testflight"
  s.version      = "6.2.2"
  s.summary      = "Adobe Marketing Cloud Plugin for Brightcove Player SDK for iOS"
  s.homepage     = "https://docs.brightcove.com/en/player/mobile-sdks/"
  s.license      = { :type => 'Commercial', :file => 'LICENSE.md' }
  s.author       = { "Brightcove" => "brightcove-native-player-sdks@googlegroups.com" }

  s.source       = { :git => "https://github.com/timothyrodgers/brightcove-player-sdk-ios-omniture.git", :tag => "v#{s.version}" }

  s.ios.deployment_target = '8.0'
  
  s.dependency 'Brightcove-Player-Core-testflight/default', '6.2.2'
  s.ios.vendored_framework   = "ios/BrightcoveAMC.framework"

  s.weak_frameworks = 'SystemConfiguration'
  s.library    = 'sqlite3.0'
  
end
