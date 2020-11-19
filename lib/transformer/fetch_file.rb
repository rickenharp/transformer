require 'dry/transaction/operation'

module Transformer
  class FetchFile
    include Import['storage']
    include Dry::Transaction::Operation

    def call(filename)
      result = storage.download(filename)
      return Failure("No such file: #{filename}") unless result
      Success(result)
    rescue StandardError => exception
      Failure(exception)
    end
  end
end
