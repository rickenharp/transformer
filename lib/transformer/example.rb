require 'types'

module Transformer
  class Example < Dry::Struct
    attribute :foo, Types::Coercible::String
  end
end
