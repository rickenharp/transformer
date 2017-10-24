require "bundler/setup"
require "transformer"

Application.finalize!

worker = Transformer::Worker.new
result = worker.('bar.txt')
puts result.inspect
