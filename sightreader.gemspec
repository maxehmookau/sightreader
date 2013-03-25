# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sightreader/version'

Gem::Specification.new do |gem|
  gem.name          = "sightreader"
  gem.version       = Sightreader::VERSION
  gem.authors       = ["Max Woolf"]
  gem.email         = ["maximus@zingysaturn.co.uk"]
  gem.description   = %q{TODO: Write a gem description}
  gem.summary       = %q{TODO: Write a gem summary}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency('rspec')
  gem.add_development_dependency('coveralls')
  gem.add_dependency('rake')
end
