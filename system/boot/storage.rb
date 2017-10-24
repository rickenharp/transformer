Transformer::Application.boot(:storage) do |container|
  init do
    require 'json'
  end
  start do
    container.register('storage') do
      class Storage
        def download(filename)
          JSON.dump({foo: filename, bar: 'quux'})
        end
      end
      Storage.new
    end
  end
end
