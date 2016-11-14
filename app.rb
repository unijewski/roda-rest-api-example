require 'pry'

class App < Roda
  plugin :all_verbs
  plugin :indifferent_params
  plugin :json
  plugin :multi_route

  Dir['./routes/**/*.rb'].each { |f| require f }

  route do |r|
    r.multi_route

    r.root do
      'Root path, yo'
    end
  end
end
