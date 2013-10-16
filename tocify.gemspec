# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tocify/version'

Gem::Specification.new do |spec|
  spec.name          = "tocify"
  spec.version       = Tocify::VERSION
  spec.authors       = ["pyro2927"]
  spec.email         = ["joseph@pintozzi.com"]
  spec.description   = "Tocify is an easy way to generate a table of contents for your markdown file"
  spec.summary       = ""
  spec.homepage      = "https://github.com/pyro2927/tocify"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
