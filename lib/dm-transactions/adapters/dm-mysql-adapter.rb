require 'dm-transactions/adapters/dm-do-adapter'

module DataMapper
  class Transaction

    module MysqlAdapter
      include DataObjectsAdapter
    end
    
  end
end
