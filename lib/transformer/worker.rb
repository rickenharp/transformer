require 'dry/transaction'

module Transformer
  class Worker
    include Dry::Transaction(container: Application)

    step :fetch_file, with: 'transformer.fetch_file'
    step :validate, with: 'transformer.validate'
    step :instantiate, with: 'transformer.instantiate'
    step :persist, with: 'transformer.persist'
  end
end
