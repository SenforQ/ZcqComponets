#
# Be sure to run `pod lib lint ZcqComponets.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  #库名称
  s.name             = 'ZcqComponets'
  #版本号
  s.version          = '0.1.3'
  #简短介绍
  s.summary          = '基本的配置，自定的NavBar，基础的VC框架，获取根目录的行为.'
  #开源库描述
#  s.description      = <<-DESC
# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!
  #开源库描述
  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC
  #开源库地址.
  s.homepage         = 'https://github.com/SenforQ/ZcqComponets'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  #开源协议
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  #开源作者
  s.author           = { 'SenforQ' => '494313298@qq.com' }
  #原资源库文件
  s.source           = { :git => 'https://github.com/SenforQ/ZcqComponets.git', :tag => s.version.to_s }
  #社交网址
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  #开源库版本最低支持
  s.ios.deployment_target = '10.0'
  #添加资源库文件
  s.source_files = 'ZcqComponets/Classes/**/*'
#  s.resource = "ZcqComponets/Assets/ZCQImages.bundle"
   s.resource_bundles = {
      'ZcqComponets' => ['ZcqComponets/Assets/*.bundle']
   }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  #依赖系统库，多个逗号隔开
  # s.frameworks = 'UIKit', 'MapKit'
  #引入第三方依赖库.
#   s.dependency 'AFNetworking', '~> 2.3'
   s.dependency 'FDFullscreenPopGesture', '~> 1.1'
end
