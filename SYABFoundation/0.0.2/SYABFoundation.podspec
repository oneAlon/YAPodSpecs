#
# Be sure to run `pod lib lint SYABFoundation.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SYABFoundation'
  s.version          = '0.0.2'
  s.summary          = 'A short description of SYABFoundation.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/oneAlon/SYABFoundation'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'onealon' => 'wangyalong24@126.com' }
  s.source           = { :git => 'https://github.com/oneAlon/SYABFoundation.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  # s.source_files = 'SYABFoundation/Classes/**/*'
  
  # s.resource_bundles = {
  #   'SYABFoundation' => ['SYABFoundation/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'

  s.subspec 'Array' do |array|
    array.source_files = 'SYABFoundation/Classes/Array/*.{swift}'
    array.dependency 'SYABFoundation/String'
  end

  s.subspec 'Data' do |data|
    data.source_files = 'SYABFoundation/Classes/Data/*.{swift}'
  end

  s.subspec 'Date' do |date|
    date.source_files = 'SYABFoundation/Classes/Date/*.{swift}'
  end

  s.subspec 'Dictionary' do |dictionary|
    dictionary.source_files = 'SYABFoundation/Classes/Dictionary/*.{swift}'
  end

  s.subspec 'NotificationCenter' do |notificationCenter|
    notificationCenter.source_files = 'SYABFoundation/Classes/NotificationCenter/*.{swift}'
  end

  s.subspec 'String' do |string|
    string.source_files = 'SYABFoundation/Classes/String/*.{swift}'
  end

end
