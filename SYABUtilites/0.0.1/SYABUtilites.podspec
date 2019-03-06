#
# Be sure to run `pod lib lint SYABUtilites.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SYABUtilites'
  s.version          = '0.0.1'
  s.summary          = 'A short description of SYABUtilites.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/onealon/SYABUtilites'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'onealon' => 'wangyalong24@126.com' }
  s.source           = { :git => 'https://github.com/oneAlon/SYABUtilites.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.subspec 'Macro' do |macro|
    macro.source_files = 'SYABUtilites/Classes/Macro/*.{swift}'
  end
  
  s.subspec 'UIApplication' do |application|
    application.source_files = 'SYABUtilites/Classes/UIApplication/*.{swift}'
  end
  
  s.subspec 'UIDevice' do |device|
    device.source_files = 'SYABUtilites/Classes/UIDevice/*.{swift}'
  end
  
  # s.resource_bundles = {
  #   'SYABUtilites' => ['SYABUtilites/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
