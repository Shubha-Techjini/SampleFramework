Pod::Spec.new do |spec|
  spec.name         = "SampleFramework"
  spec.version      = "1.0.2"
  spec.summary      = "Sample framework for cocoapod"
  spec.description  = "Sample framework to check cocoapod intergration"
  spec.homepage     = "https://github.com/Shubha-Techjini/SampleFramework.git"
  spec.license      = "MIT"
  spec.author       = { "Shubha S" => "Shubha@techjini.com" }
  spec.platform     = :ios
  spec.ios.deployment_target = "10.0"
  spec.source       = { :git => "https://github.com/Shubha-Techjini/SampleFramework.git", :tag => "1.0.2" }
  spec.source_files  = "SampleFramework/**/*.h"
 # spec.public_header_files = "Classes/**/*.h"
end
