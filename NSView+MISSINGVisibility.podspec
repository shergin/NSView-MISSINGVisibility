Pod::Spec.new do |s|
  s.name = "NSView+MISSINGVisibility"
  s.version = "1.0.3"
  s.summary = "A very tiny library that add `visibility` concept (somethings like property `hidden` but better) for NSView."
  s.homepage = "https://github.com/shergin/NSView-MISSINGVisibility"
  s.license = 'MIT'
  s.author = { "Valentin Shergin" => "valentin@shergin.com" }
  s.source = { :git => "https://github.com/shergin/NSView-MISSINGVisibility.git", :tag => s.version.to_s }
  s.platform = :osx, '10.7'
  s.requires_arc = true
  s.source_files = 'Pod/Classes/**/*'
  s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'AppKit'
end
