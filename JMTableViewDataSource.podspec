#
# Be sure to run `pod lib lint JMTableViewDataSource.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'JMTableViewDataSource'
  s.version          = '1.0.0'
  s.summary          = 'A implementation of UITableViewDataSource with closure and protocol'

# This description is used to generate tags and improve search results.
#   * Think: This is for easy and fast TableViewDataSource implentation. When we need change the Cell in our tableview we always have to change the metods in TableViewDataSource, I wrote this implementation for that cases.
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.

  s.description      = <<-DESC
This is for easy and fast TableViewDataSource implentation. When we need change the Cell in our tableview we always have to change the metods in TableViewDataSource, I wrote this implementation for that cases.
                       DESC

  s.homepage         = 'https://github.com/jorgemendiza/JMTableViewDataSource'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Jorge Mendizabal' => 'jorgemendiza@me.com' }
  s.source           = { :git => 'https://github.com/jorgemendiza/JMTableViewDataSource.git', :tag => s.version.to_s }
  s.social_media_url = 'https://facebook.com/jorgemendiza'
  s.ios.deployment_target = '9.0'

  s.source_files = 'JMTableViewDataSource/Classes/**/*'
  
  # s.resource_bundles = {
  #   'JMTableViewDataSource' => ['JMTableViewDataSource/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
