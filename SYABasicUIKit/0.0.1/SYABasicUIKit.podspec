#
# Be sure to run `pod lib lint SYABasicUIKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SYABasicUIKit'
  s.version          = '0.0.1'
  s.summary          = 'A short description of SYABasicUIKit.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'swift基础组件库'

  s.homepage         = 'https://github.com/oneAlon/SYABasicUIKit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'onealon' => 'wangyalong24@126.com' }
  s.source           = { :git => 'https://github.com/oneAlon/SYABasicUIKit.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  # s.source_files = 'SYABasicUIKit/Classes/**/*'
  
  # s.resource_bundles = {
  #   'SYABasicUIKit' => ['SYABasicUIKit/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  
    s.dependency 'SnapKit'
    # s.dependency 'SYABUtilites'
    s.dependency 'Kingfisher'

    s.subspec 'UIColor' do |color|
        color.source_files = 'SYABasicUIKit/Classes/UIColor/*.{swift}'
    end

    s.subspec 'UIFont' do |font|
        font.source_files = 'SYABasicUIKit/Classes/UIFont/*.{swift}'
        # font.resource = 'SYABasicUIKit/Classes/UIFont/UIFont.bundle'
    end

    s.subspec 'UIGestureRecognizer' do |gestureRecognizer|
        gestureRecognizer.source_files = 'SYABasicUIKit/Classes/UIGestureRecognizer/*.{swift}'
    end

    s.subspec 'UIImage' do |image|
        image.source_files = 'SYABasicUIKit/Classes/UIImage/*.{swift}'
    end

    s.subspec 'UIScrollView' do |scrollView|
        scrollView.source_files = 'SYABasicUIKit/Classes/UIScrollView/*.{swift}'
    end

    s.subspec 'UITextField' do |textField|
        textField.source_files = 'SYABasicUIKit/Classes/UITextField/*.{swift}'
    end

    s.subspec 'UITextView' do |textView|
        textView.source_files = 'SYABasicUIKit/Classes/UITextView/*.{swift}'
    end

    s.subspec 'UIView' do |view|
        view.source_files = 'SYABasicUIKit/Classes/UIView/*.{swift}'
        view.dependency 'SYABasicUIKit/UIGestureRecognizer'
    end

end
