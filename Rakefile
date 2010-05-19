require 'rubygems'
require 'rake'

begin

  require 'jeweler'

  Jeweler::Tasks.new do |gem|
    gem.name        = "dm-transactions"
    gem.summary     = %Q{Adds transaction support to datamapper}
    gem.description = %Q{Makes transaction support available for adapters that support them}
    gem.email       = "gamsnjaga@gmail.com"
    gem.homepage    = "http://github.com/datamapper/dm-transactions"
    gem.authors     = ["Dirkjan Bussink (dbussink)", "Dan Kubb (dkubb)"]

    gem.add_dependency 'dm-core', '~> 1.0.0.rc2'

    gem.add_development_dependency 'rspec',   '~> 1.3'

  end

  Jeweler::GemcutterTasks.new

  FileList['tasks/**/*.rake'].each { |task| import task }

rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: gem install jeweler"
end
