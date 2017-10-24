require "bundler/setup"
require "transformer"
require 'transformer/validate'
require 'transformer/instantiate'


Transformer::Application.register(:validate) { Transformer::Validate.new }
Transformer::Application.register(:instantiate) { Transformer::Instantiate.new }

Transformer::Application.finalize!

worker = Transformer::Worker.new
result = worker.('bar.txt')
puts result.inspect
