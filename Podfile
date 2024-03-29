# Uncomment the next line to define a global platform for your project
platform :ios, '12.0'

target 'Appcircle' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for Appcircle
        pod 'FirebaseAuth' 
  	    pod 'FirebaseAnalytics'
  	    pod 'FirebaseRemoteConfig'
  	    pod 'FirebaseStorage'
  	    pod 'FirebaseMessaging'
	      pod 'AFNetworking'
  	    pod 'SDWebImage'
  	    pod 'Moya'
	      pod 'Starscream'
	      pod 'SnapKit'
	      pod 'Masonry'


  target 'AppcircleTests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'AppcircleUITests' do
    # Pods for testing
  end
  
  post_install do |installer|
    installer.pods_project.targets.each do |target|
      target.build_configurations.each do |config|
        config.build_settings["IPHONEOS_DEPLOYMENT_TARGET"] = "12.0"
      end
    end
  end
end
