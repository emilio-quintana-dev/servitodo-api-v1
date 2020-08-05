class AuthController < ApplicationController
    def create
        user = User.find_by(email: params[:email])

        if user && user.authenticate(params[:password])
            render json: { id: user.id, email: user.email }
        else
            render json: { error: "Invalid Username or password" }
        end
    end
end
