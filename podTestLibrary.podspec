Pod::Spec.new do |s|
  s.name             = "podTestLibrary"       #名称
  s.version          = "1.0.1"                #版本号
  s.summary          = "Just Testing."        #简短介绍
  s.description      = <<-DESC
                        Tust Testing  paivate Podspec
                       DESC

                       #主页，填写可以访问到的地址
  s.homepage         = "https://github.com/ClearerMe/podTestLibrary"  
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "huxiao" => "huxiao@geek-zoo.com" }
  s.source           = { :git => "https://github.com/ClearerMe/podTestLibrary.git", :tag => "1.0.1" }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  #s.ios.deployment_target = '8.0'
  s.platform     = :ios, '7.0'
  #s.source_files = 'podTestLibrary/Classes/**/*'
  
  # s.resource_bundles = {
  #   'podTestLibrary' => ['podTestLibrary/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'

  s.subspec 'modell' do |m|
    m.source_files = 'podTestLibrary/Classes/model/*.{h,m}'
    end

  s.subspec 'network' do |network|

    network.source_files = 'podTestLibrary/Classes/network/STINetworkHeader.h'

    network.subspec 'http' do |http|
      http.subspec 'STINetwork' do |STINetwork|
        STINetwork.source_files = 'podTestLibrary/Classes/network/http/STIHTTPNetwork/*'        
        end
      http.subspec 'vendor' do |vendor|
        vendor.source_files = 'podTestLibrary/Classes/network/http/vendor/*'
        end
      end    
    end  
end
