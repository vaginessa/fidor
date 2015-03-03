# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fidor/version'

Gem::Specification.new do |spec|
  spec.name          = "fidor"
  spec.version       = Fidor::VERSION
  spec.authors       = ["Roman Lehnert"]
  spec.email         = ["roman.lehnert@googlemail.com"]

  spec.summary       = %q{A Ruby mapper for the Fidor API}
  spec.homepage      = "https://github.com/bonayou/fidor"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.2"
end
