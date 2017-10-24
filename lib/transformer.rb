require_relative "../system/transformer/application"
require "transformer/version"
require "transformer/fetch_file"
require "transformer/persist"

module Transformer
  Transformer::Application.register(:fetch_file) { Transformer::FetchFile.new }
  Transformer::Application.register(:persist) { Transformer::Persist.new }
end
