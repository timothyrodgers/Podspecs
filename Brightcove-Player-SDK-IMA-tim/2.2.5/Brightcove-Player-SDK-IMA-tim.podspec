Pod::Spec.new do |s|

	s.name         = "Brightcove-Player-SDK-IMA"
	s.version      = "2.2.5"
	s.summary      = "IMA Plugin for Brightcove Player SDK for iOS"
	s.homepage     = "https://docs.brightcove.com/en/video-cloud/mobile-sdks/"
	s.license      = { :type => 'Commercial', :file => 'LICENSE.md' }
	s.author       = { "Brightcove" => "brightcove-native-player-sdks@googlegroups.com" }

	s.platform = :ios
	s.ios.deployment_target = '8.0'
	s.source       = { :git => "https://github.com/timothyrodgers/brightcove-player-sdk-ios-ima.git", :tag => "v#{s.version}" }
	s.requires_arc = true

	s.dependency 'Brightcove-Player-SDK', '~> 5.3.0'
	s.dependency 'GoogleAds-IMA-iOS-SDK', '3.5.2'
	s.vendored_framework   = "ios/BrightcoveIMA.framework"

end
