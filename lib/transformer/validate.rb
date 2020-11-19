require 'dry/transaction/operation'
require 'dry-validation'
require 'json'

Dry::Validation.load_extensions(:monads)

module Transformer
  class Validate
    class Schema < Dry::Validation::Contract
      params do
        required(:foo).filled
      end
    end
    
    include Dry::Transaction::Operation

    def call(input)
      data = JSON.parse(input)
      validated = Schema.new.(data)
      validated.to_either
    rescue StandardError => exception
      Failure(exception)
    end
  end
end
