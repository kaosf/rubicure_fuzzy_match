# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rubicure_fuzzy_match/version'

Gem::Specification.new do |spec|
  spec.name          = "rubicure_fuzzy_match"
  spec.version       = RubicureFuzzyMatch::VERSION
  spec.authors       = ["ka"]
  spec.email         = ["ka.kaosf@gmail.com"]

  spec.summary       = %q{Fuzzy matcher for Rubicure}
  spec.description   = %q{Fuzzy matcher for Rubicure}
  spec.homepage      = "https://github.com/kaosf/rubicure_fuzzy_matcher"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "rubicure", "0.2.7"
  spec.add_dependency "fuzzy_match", "~> 2.1.0"

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "test-unit", "~> 3.1.3"
end
