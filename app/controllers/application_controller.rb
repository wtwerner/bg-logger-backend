class ApplicationController < ActionController::API
    helpers do
        def current_user
            # mocked login
            User.first
        end
    end
end
