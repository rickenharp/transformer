require 'dry/transaction/operation'

module Transformer
  class Persist
    include Dry::Transaction::Operation
    include Import['datastore']

    def call(input)
      Right(datastore.save(input))
    end
  end
end
