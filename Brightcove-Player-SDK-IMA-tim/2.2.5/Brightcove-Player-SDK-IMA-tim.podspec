Pod::Spec.new do |s|

	s.name         = "Brightcove-Player-SDK-IMA-tim"
	s.version      = "2.2.5"
	s.summary      = "IMA Plugin for Brightcove Player SDK for iOS"
	s.homepage     = "https://docs.brightcove.com/en/video-cloud/mobile-sdks/"
	s.license      = { :type => 'Commercial', :file => 'LICENSE.md' }
	s.author       = { "Brightcove" => "brightcove-native-player-sdks@googlegroups.com" }

	s.platform = :ios
	s.ios.deployment_target = '8.0'
	s.source       = { :git => "https://github.com/brightcove/brightcove-player-sdk-ios-ima.git", :tag => "v#{s.version}" }
	s.requires_arc = true

	s.dependency 'Brightcove-Player-SDK-tim/dynamic', '~> 5.3.0'
	
	s.default_subspec = 'Default'

	s.subspec 'Default' do |default|	
		default.dependency 'GoogleAds-IMA-iOS-SDK', '3.5.2'
		default.vendored_framework   = "ios/BrightcoveIMA.framework"
	end
	
	s.subspec 'ForAdMob' do |admob|
		admob.dependency 'Google-Mobile-Ads-SDK'
		admob.vendored_framework   = "ios/BrightcoveIMA.framework"
	end



end
