require 'dry/transaction/operation'

module Transformer
  class FetchFile
    include Import['storage']
    include Dry::Transaction::Operation

    def call(filename)
      result = storage.download(filename)
      return Left("No such file: #{filename}") unless result
      Right(result)
    rescue StandardError => exception
      Left(exception)
    end
  end
end
