Pod::Spec.new do |s|
  s.name         = "UIImageView+SDWebImageTool"
  s.version      = "1.0"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.summary      = "SDWebImage的一个分类，菊花，渐变"
  s.homepage     = "https://github.com/ellmcz/UIImageView-SDWebImageTool"
  s.authors      = { "ellmcz" => "wqbs007@163.com" }
  s.source       = { :git => "https://github.com/ellmcz/UIImageView-SDWebImageTool.git", :tag =>s.version.to_s }
  s.platform     = :ios, '6.0'
  s.requires_arc = true
  s.source_files = 'UIImageView+SDWebImageTool/*.{h,m}'
  s.framework ="UIKit"
  s.dependency "SDWebImage"
  
end