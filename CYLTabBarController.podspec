Pod::Spec.new do |s|
  s.name         = "CYLTabBarController"
  s.version      = "1.29.2"
  s.summary      = "Highly customizable tabBar and tabBarController for iOS"
  s.description  = "[EN]It is an iOS UI module library for adding animation to iOS tabbar items and icons with Lottie.  [CN]【中国特色 TabBar】一行代码实现 Lottie 动画TabBar，支持中间带+号的TabBar样式，自带红点角标，支持动态刷新。【iOS12 & iPhone XS MAX supported】"
  s.homepage     = "https://github.com/ChenYilong/CYLTabBarController"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "ChenYilong" => "luohanchenyilong@163.com" }
  s.social_media_url = 'http://weibo.com/luohanchenyilong/'
  s.platform     = :ios, '13.0'
  s.source       = { :git => "https://github.com/ChenYilong/CYLTabBarController.git", :tag => s.version.to_s }
 
  s.requires_arc = true
  s.swift_version = '5.0'

  s.default_subspec = 'Core'

  s.subspec 'Core' do |core|
  core.source_files  = 'CYLTabBarController', 'CYLTabBarController/**/*.{h,m, swift}'
  core.public_header_files = 'CYLTabBarController/**/*.h'
  end

  s.subspec 'Lottie' do |lottie|
    lottie.dependency 'CYLTabBarController/Core'
    lottie.dependency 'lottie-ios' , '4.5.1'
  end
end
 
