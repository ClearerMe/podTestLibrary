Pod::Spec.new do |s|
  s.name             = "podTestLibrary"       #名称
  s.version          = "0.1.2"                #版本号
  s.summary          = "Just Testing."        #简短介绍
  s.description      = <<-DESC
                        Tust Testing  paivate Podspec
                       DESC

                       #主页，填写可以访问到的地址
  s.homepage         = "https://github.com/ClearerMe/podTestLibrary"  
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "huxiao" => "huxiao@geek-zoo.com" }
  s.source           = { :git => "https://github.com/ClearerMe/podTestLibrary.git", :tag => "0.1.2" }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'podTestLibrary/Classes/**/*'
  
  # s.resource_bundles = {
  #   'podTestLibrary' => ['podTestLibrary/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
