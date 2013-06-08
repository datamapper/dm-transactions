require 'dm-transactions/adapters/dm-do-adapter'

module DataMapper
  class Transaction

    module MysqlAdapter
      include DataObjectsAdapter

      # MySQL error code indicating an unknown savepoint error
      UNKNOWN_SAVEPOINT_ERROR_CODE = 1305

      # Commit the transaction
      #
      # @param [DataObject::Transaction] transaction
      #
      # @return [self]
      #
      # @api private
      def commit(transaction)
        super
      rescue DataObjects::SyntaxError => exception
        skip_savepoint_exception(exception)
      end

      # Rollback the transaction
      #
      # @param [DataObject::Transaction] transaction
      #
      # @return [self]
      #
      # @api private
      def rollback(transaction)
        super
      rescue DataObjects::SyntaxError => exception
        skip_savepoint_exception(exception)
      end

      # Test if the adapter supports savepoints
      #
      # @return [Boolean]
      #
      # @api private
      def supports_savepoints?
        true
      end

    private

      # Raise all exceptions besides savepoint exceptions
      #
      # @param [DataObjects::SyntaxError]
      #
      # @return [undefined]
      #
      # @raise [DataObjects::SyntaxError]
      #   raised when the error is not a savepoint exception
      #
      # @api private
      def skip_savepoint_exception(exception)
        raise exception unless exception.code == UNKNOWN_SAVEPOINT_ERROR_CODE
      end

    end # module MysqlAdapter

  end # class Transaction
end # module DataMapper
