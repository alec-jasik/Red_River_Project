class UsersController < ApplicationController
    def index
        users = User.all
        render json: users
    end

    def create
        user = User.new(user_params)
        # byebug
        if user.valid?
            user.save
            render json: {user: user, token: JWT.encode({user_id: user.id}, "secret")}
        else
            render json: {error: "Error. Please try again."}, status: :not_acceptable
        end
    end

    def get_user
        user = self.current_user
        render json: user, include: [:reviews, :reservations]
    end

    private

    def user_params
        params.require(:user).permit(:username, :password, :email, :phone)
    end
end
