require 'dry/transaction'

module Transformer
  class Worker
    include Dry::Transaction(container: Application)

    step :fetch_file, with: 'fetch_file'
    step :validate, with: 'validate'
    step :instantiate, with: 'instantiate'
    step :persist, with: 'persist'
  end
end
