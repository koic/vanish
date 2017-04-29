lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vanishing_vision/version'

Gem::Specification.new do |spec|
  spec.name          = "vanishing_vision"
  spec.version       = VanishingVision::VERSION
  spec.authors       = ["Koichi ITO"]
  spec.email         = ["koic.ito@gmail.com"]

  spec.summary       = %q{Vanishing Vision erases the useless white space in the text file.}
  spec.description   = %q{Vanishing Vision erases the useless white space in the text file.}
  spec.homepage      = "https://github.com/koic/vanishing_vision"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
