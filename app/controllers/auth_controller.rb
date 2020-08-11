class AuthController < ApplicationController
    def create
        user = User.find_by(email: params[:email])

        if user && user.authenticate(params[:password])
            payload = { user_id: user.id }
            secret = 'secret'
            token = JWT.encode(payload, secret, 'HS256')
            render json: { id: user.id, email: user.email, zip_code: user.zip_code, token: token }
        else
            render json: { error: "Invalid Username or password" }
        end
    end

    def new
        user = User.create(
            first_name: params[:first_name],
            last_name: params[:last_name],
            email: params[:email],
            zip_code: params[:zip_code].to_i,
            password: params[:password],
            password_confirmation: params[:password_confirmation],
            )

        if user
            payload = { user_id: user.id }
            secret = 'secret'
            token = JWT.encode(payload, secret, 'HS256')
            render json: { id: user.id, email: user.email, zip_code: user.zip_code, token: token }
        else
            render json: {
                error: "Error while creating user, please try again."
            }
        end
    end

    def show
        token = request.headers["Authorization"].split(' ').last
        decoded_token = JWT.decode(token, 'secret', true, { algorithm:'HS256' })
        id = decoded_token.first['user_id']

        user = User.find(id)
        if(user)
            render json: { id: user.id, email: user.email, zip_code: user.zip_code }
        else
            render json: { error: 'Invalid Token'}
        end
        
    end
end
