require 'dm-transactions'

require 'dm-core/spec/lib/spec_helper'
require 'dm-core/spec/lib/pending_helpers'
require 'dm-core/spec/lib/adapter_helpers'
require 'dm-core/spec/lib/counter_adapter'

require 'dm-core/spec/resource_shared_spec'
require 'dm-core/spec/sel_shared_spec'

ENV['ADAPTERS'] ||= 'sqlite3'

# create sqlite3_fs directory if it doesn't exist
temp_db_dir = Pathname(File.expand_path('../db', __FILE__))
temp_db_dir.mkpath

DataMapper::Spec::AdapterHelpers.temp_db_dir = temp_db_dir

adapters  = ENV['ADAPTERS'].split(' ').map { |adapter_name| adapter_name.strip.downcase }.uniq
adapters  = DataMapper::Spec::AdapterHelpers.primary_adapters.keys if adapters.include?('all')

DataMapper::Spec::AdapterHelpers.setup_adapters(adapters)

Spec::Runner.configure do |config|

  config.extend(DataMapper::Spec::AdapterHelpers)
  config.include(DataMapper::Spec::PendingHelpers)

  config.after :all do
    DataMapper::Spec.cleanup_models
  end

end
