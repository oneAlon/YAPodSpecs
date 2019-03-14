#
# Be sure to run `pod lib lint SYABNetwork.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SYABNetwork'
  s.version          = '0.0.5'
  s.summary          = 'A short description of SYABNetwork.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/onealon/SYABNetwork'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'onealon' => 'wangyalong24@126.com' }
  s.source           = { :git => 'https://github.com/onealon/SYABNetwork.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'
  
  s.dependency 'Alamofire'
  s.dependency 'ReachabilitySwift'
  s.dependency 'SYABFoundation'
  s.dependency 'HandyJSON'
  
  s.subspec 'Manager' do |manager|
    manager.source_files = 'SYABNetwork/Classes/Manager/*.{swift}'
  end
  
  s.subspec 'JsonSerializer' do |jsonSerializer|
    jsonSerializer.source_files = 'SYABNetwork/Classes/JsonSerializer/*.{swift}'
  end
  
  s.subspec 'BaseModel' do |baseModel|
    baseModel.source_files = 'SYABNetwork/Classes/BaseModel/*.{swift}'
    baseModel.dependency 'SYABNetwork/JsonSerializer'
    baseModel.dependency 'SYABNetwork/Manager'
  end
end
