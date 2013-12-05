# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vagrant-testlib/version'

Gem::Specification.new do |spec|
  spec.name          = "vagrant-testlib"
  spec.version       = Vagrant::Testlib::VERSION
  spec.authors       = ["Mitchell Hashimoto"]
  spec.email         = ["mitchell.hashimoto@gmail.com"]
  spec.description   = %q{Tool and library for testing Vagrant plugins}
  spec.summary       = %q{Tool and library for testing Vagrant plugins.}
  spec.homepage      = "https://github.com/mitchellh/vagrant-testlib"
  spec.license       = "MPL2"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "childprocess", "~> 0.3.7"
  spec.add_dependency "log4r", "~> 1.1.9"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 2.14.0"
end