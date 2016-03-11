# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'moneda/version'

Gem::Specification.new do |spec|
  spec.name          = "moneda"
  spec.version       = Moneda::VERSION
  spec.authors       = ["Antek Piechnik"]
  spec.email         = ["antek.piechnik@gmail.com"]
  spec.summary       = "API wrapper for openexchangerates.org"
  spec.description   = "API wrapper for openexchangerates.org"
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"

  spec.add_runtime_dependency 'httparty'
end
