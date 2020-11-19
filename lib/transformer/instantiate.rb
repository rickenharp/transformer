require 'dry/transaction/operation'
require 'transformer/example'


module Transformer
  class Instantiate
    include Import['datastore']
    include Dry::Transaction::Operation

    def call(input)
      example = Transformer::Example.new(input)
      Success(example)
    rescue StandardError => exception
      Failure(exception)
    end
  end
end
