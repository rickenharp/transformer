Transformer::Application.boot(:datastore) do |container|
  start do
    container.register('datastore') do
      class Datastore
        def save(object)
          object
        end
      end
      Datastore.new
    end
  end
end
