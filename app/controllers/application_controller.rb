class ApplicationController < ActionController::API
    def current_user
        User.find(session[:current_user])
    end

    def logged_in?
        !!current_user
    end
end
