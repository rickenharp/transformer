# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "transformer/version"

Gem::Specification.new do |spec|
  spec.name          = "transformer"
  spec.version       = Transformer::VERSION
  spec.authors       = ["Alexander Graefe"]
  spec.email         = ["alex@codemo.de"]

  spec.summary       = 'Example gem for using dry-system'
    spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'pry', '~> 0.11'
  spec.add_runtime_dependency 'dry-system', '~> 0.8'
  spec.add_runtime_dependency 'dry-struct', '~> 0.3'
  spec.add_runtime_dependency 'dry-transaction', '~> 0.10'
  spec.add_runtime_dependency 'dry-validation', '~> 0.11'

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
