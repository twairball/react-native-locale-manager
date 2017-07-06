
Pod::Spec.new do |s|
  s.name         = "RNLocaleManager"
  s.version      = "1.0.0"
  s.summary      = "RNLocaleManager"
  s.description  = <<-DESC
                  Change app locale via iOS UserDefaults, or Android SharedPreferences.
                   DESC
  s.homepage     = ""
  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author             = { "twairball" => "twairball@yahoo.com" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/twairball/RNLocaleManager.git", :tag => "master" }
  s.source_files  = "RNLocaleManager/**/*.{h,m}"
  s.requires_arc = true


  s.dependency "React"
  #s.dependency "others"

end

  