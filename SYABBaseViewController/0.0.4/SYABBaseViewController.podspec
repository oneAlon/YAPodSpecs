#
# Be sure to run `pod lib lint SYABBaseViewController.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SYABBaseViewController'
  s.version          = '0.0.4'
  s.summary          = 'A short description of SYABBaseViewController.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/onealon/SYABBaseViewController'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'onealon' => 'wangyalong24@126.com' }
  s.source           = { :git => 'https://github.com/oneAlon/SYABBaseViewController.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'
  
  s.dependency 'SYABNetwork'
  s.dependency 'MJRefresh'
  s.dependency 'SYABUtilites'
  s.dependency 'SYABasicUIKit'
  s.dependency 'RTRootNavigationController'
  s.dependency 'WebViewJavascriptBridge'

  s.subspec 'BaseNavigationController' do |baseNavigationController|
    baseNavigationController.source_files = 'SYABBaseViewController/Classes/BaseNavigationController/*.{swift}'
  end
  
  s.subspec 'BaseTabBarController' do |baseTabBarController|
    baseTabBarController.source_files = 'SYABBaseViewController/Classes/BaseTabBarController/*.{swift}'
  end
  
  s.subspec 'BaseViewController' do |baseViewController|
    baseViewController.source_files = 'SYABBaseViewController/Classes/BaseViewController/*.{swift}'
  end
  
  s.subspec 'BaseTableViewController' do |baseTableViewController|
    baseTableViewController.source_files = 'SYABBaseViewController/Classes/BaseTableViewController/*.{swift}'
    baseTableViewController.dependency 'SYABBaseViewController/BaseViewController'
  end
  
  s.subspec 'BaseWebViewController' do |baseWebViewController|
    baseWebViewController.source_files = 'SYABBaseViewController/Classes/BaseWebViewController/*.{swift}'
    baseWebViewController.dependency 'SYABBaseViewController/BaseViewController'
  end
  
end
