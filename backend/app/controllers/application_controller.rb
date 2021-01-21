class ApplicationController < ActionController::API
    def current_user
        byebug
        begin
            method, token = request.headers[:Authorization].split(' ')
            # byebug
            if method === 'Bearer'
                payload, header = JWT.decode(token, "secret")
                User.find(payload["user_id"])
            end
        rescue
            raise Exception.new("You must be logged in to make this request.")
        end
    end
end
