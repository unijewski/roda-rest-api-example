module API
  module V1
    class Users < Base
      App.route('v1', 'api') do |r|
        r.is 'users' do
          r.get do
            { users: 'all users' }
          end

          r.post do
            { user: 'create user' }
          end
        end

        r.is 'users/:id' do |_id|
          r.get do
            { user: 'user' }
          end

          r.put do
            { user: 'updated' }
          end

          r.delete do
            { user: 'deleted' }
          end
        end
      end
    end
  end
end
