class AuthController < ApplicationController
    def create
        byebug
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
            render json: {user_id: user.id, token: JWT.encode({user_id: user.id}, "secret")}
        else
            render json: {error: "Invalid username or password"}
        end
    end
end
