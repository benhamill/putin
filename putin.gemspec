# -*- encoding: utf-8 -*-

require File.expand_path('../lib/putin/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name          = "putin"
  gem.version       = Putin.version
  gem.summary       = "Putin is a pry-based way to get a development console into your project."
  gem.description   = "Putin is a pry-based way to get a development console into your project."
  gem.license       = "MIT"
  gem.authors       = ["Ben Hamill"]
  gem.email         = "ben@benhamill.com"
  gem.homepage      = "https://github.com/benhamill/putin#readme"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']

  gem.add_dependency 'pry'
  gem.add_dependency 'pry-doc'

  gem.add_development_dependency 'bundler', '~> 1.0'
  gem.add_development_dependency 'rdoc',    '~> 3.0'
  gem.add_development_dependency 'rspec',   '~> 2.4'
  gem.add_development_dependency 'bundler', '~> 1.0'
  gem.add_development_dependency 'rake',    '~> 0.8'
end
