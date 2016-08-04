
Pod::Spec.new do |s|
s.name         = "UIImageView+SDWebImageTool"
s.version      = "1.0"
s.license      = { :type => 'MIT', :file => 'LICENSE' }
s.summary      = "SDWebImage一个分类"
s.homepage     = "https://github.com/ellmcz/UIImageView-SDWebImageTool"
s.authors      = { "ellmcz" => "wqbs007@163.com" }
s.source       = { :git => "https://github.com/ellmcz/UIImageView-SDWebImageTool.git", :tag =>   "1.0" }
s.platform     = :ios, '6.0'
s.requires_arc = true
s.source_files = 'SortProperty/*.{h,m}'
s.dependency="SDWebImage"
end