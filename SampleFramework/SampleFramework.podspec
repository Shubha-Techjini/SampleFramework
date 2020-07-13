Pod::Spec.new do |spec|
  spec.name         = "SampleFramework"
  spec.version      = "1.0.0"
  spec.summary      = "A short description of SampleFramework."
  spec.description  = "Sample framework to check cocoapod intergration"
  spec.homepage     = "https://github.com/Shubha-Techjini/SampleFramework.git"
  spec.license      = "MIT"
  spec.author       = { "Shubha S" => "Shubha@techjini.com" }
  spec.platform     = :ios
  spec.ios.deployment_target = "10.0"
  spec.source       = { :git => "https://github.com/Shubha-Techjini/SampleFramework.git", :tag => "1.0.0" }
  spec.source_files  = "SampleFramework/**/*.{h,m}"
 # spec.public_header_files = "Classes/**/*.h"
end
