platform :ios, '17.0'

target 'Appcircle' do
  use_frameworks!
  inhibit_all_warnings!

  pod 'SDWebImage'

  target 'AppcircleTests' do
    inherit! :search_paths
  end

  target 'AppcircleUITests' do
  end

  post_install do |installer|
    installer.pods_project.targets.each do |target|
      target.build_configurations.each do |config|
        config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '17.0'
      end
    end
  end
end
