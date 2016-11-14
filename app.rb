class App < Roda
  plugin :multi_route

  route do |r|
    r.multi_route

    r.root do
      'Root path, yo'
    end
  end
end
