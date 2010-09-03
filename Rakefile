require 'rubygems'
require 'rake'

begin
  gem 'jeweler', '~> 1.4'
  require 'jeweler'

  Jeweler::Tasks.new do |gem|
    gem.name        = 'dm-transactions'
    gem.summary     = 'Adds transaction support to datamapper'
    gem.description = 'Makes transaction support available for adapters that support them'
    gem.email       = 'gamsnjaga@gmail.com'
    gem.homepage    = 'http://github.com/datamapper/%s' % gem.name
    gem.authors     = [ 'Dirkjan Bussink (dbussink)', 'Dan Kubb (dkubb)' ]

    gem.rubyforge_project = 'datamapper'

    gem.add_dependency 'dm-core', '~> 1.0.1'

    gem.add_development_dependency 'rspec', '~> 1.3'
  end

  Jeweler::GemcutterTasks.new

  FileList['tasks/**/*.rake'].each { |task| import task }
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: gem install jeweler"
end
