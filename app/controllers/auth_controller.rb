class AuthController < ApplicationController
    def create
        user = User.find_by(email: params[:email])

        if user && user.authenticate(params[:password])
            payload = { user_id: user.id }
            secret = 'secret'
            token = JWT.encode(payload, secret, 'HS256')
            render json: { id: user.id, email: user.email, token: token }
        else
            render json: { error: "Invalid Username or password" }
        end
    end

    def show
        token = request.headers["Authorization"].split(' ').last
        decoded_token = JWT.decode(token, 'secret', true, { algorithm:'HS256' })
        id = decoded_token.first['user_id']

        user = User.find(id)
        if(user)
            render json: { id: user.id, email: user.email }
        else
            render json: { error: 'Invalid Token'}
        end
        
    end
end
