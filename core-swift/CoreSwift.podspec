Pod::Spec.new do |s|
  s.name = 'CoreSwift'
  s.version = '1.0.0'
  s.summary = 'Somthing'
  s.license = 'ISC'
  s.homepage = 'https://github.com'
  s.author = 'IONIC'
  s.source = { :git => 'git+https://github.git', :tag => s.version.to_s }
  s.source_files = 'CoreSwift/**/*.{swift,h,m,c,cc,mm,cpp}'
  s.ios.deployment_target  = '13.0'
  s.swift_version = '5.1'
end
