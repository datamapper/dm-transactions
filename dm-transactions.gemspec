# -*- encoding: utf-8 -*-
require File.expand_path('../lib/dm-transactions/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors     = [ 'Dirkjan Bussink (dbussink)', 'Dan Kubb (dkubb)' ]
  gem.email       = [ "gamsnjaga@gmail.com" ]
  gem.summary     = "Adds transaction support to DataMapper"
  gem.description = "Makes transaction support available for adapters that support them"
  gem.homepage    = "http://datamapper.org"

  gem.files            = `git ls-files`.split("\n")
  gem.test_files       = `git ls-files -- {spec}/*`.split("\n")
  gem.extra_rdoc_files = %w[LICENSE README.rdoc]

  gem.name          = "dm-transactions"
  gem.require_paths = [ "lib" ]
  gem.version       = DataMapper::Transactions::VERSION

  gem.add_runtime_dependency('dm-core', '~> 1.3.0.beta')

  gem.add_development_dependency('rake',  '~> 0.9.2')
  gem.add_development_dependency('rspec', '~> 1.3.2')
end
