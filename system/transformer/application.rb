require 'dry/system/container'

module Transformer
  class Application < Dry::System::Container
    setting :env, ENV.fetch('APP_ENV', 'development').to_sym
    configure do |config|
      config.root = Pathname(File.dirname(__FILE__)).join('../..')
      config.auto_register = ['lib']
    end
    load_paths!('lib')

    def self.env
      config.env
    end
  end

  Import = Application.injector
end
