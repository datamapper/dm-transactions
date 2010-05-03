require 'dm-transactions/adapters/dm-do-adapter'

module DataMapper
  class Transaction

    module PostgresAdapter
      include DataObjectsAdapter
    end
    
  end
end
