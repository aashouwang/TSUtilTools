Pod::Spec.new do |s|
  s.name         = "TSUtilTools"
  s.version      = "0.0.1"
  s.summary      = "常用的util类"
  s.description  = <<-DESC
              1、加入常见的单例类
              2、加入常用的catetory
              3、加入基础类的封装
                   DESC

  s.homepage     = "https://github.com/aashouwang/TSUtilTools"
  s.license      = "MIT"
  s.author             = { "tangtieshan" => "luoshuitts@efun.com" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/aashouwang/TSUtilTools.git", :tag => s.version }
  s.source_files  = "TSUtilTools/**/*.{h,m}"
  s.framework  = "Foundation", "UIKit"

end
