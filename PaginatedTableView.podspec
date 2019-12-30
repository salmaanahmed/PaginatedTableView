#
# Be sure to run `pod lib lint PaginatedTableView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'PaginatedTableView'
  s.version          = '1.0.1'
  s.summary          = 'Assign this class to your UITableView and it will be equipped with pull to refresh as well as infinite scroll'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  Assign this class to your UITableView and it will be equipped with pull to refresh as well as infinite scroll along with a callback where you don't have to worry about page number/size stuff. Thats why libraries exist :)

                       DESC

  s.homepage         = 'https://github.com/salmaanahmed/PaginatedTableView'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Salmaan Ahmed' => 'salmaan.ahmed@hotmail.com' }
  s.source           = { :git => 'https://github.com/salmaanahmed/PaginatedTableView.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'

  s.source_files = 'PaginatedTableView/Classes/*.swift'
  
  # s.resource_bundles = {
  #   'PaginatedTableView' => ['PaginatedTableView/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit' #, 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
