
Pod::Spec.new do |s|
  s.name = 'CoreSwift'
  s.version = '1.0.0'
  s.summary = ''
  s.license = ''
  s.homepage = ''
  s.author = ''
  s.source = { :git => 'git+http://github.com.git', :tag => s.version.to_s }
  s.source_files = 'Sources/**/*.{swift,h,m,c,cc,mm,cpp}'
  s.ios.deployment_target  = '13.0'
  s.swift_version = '5.1'
end
