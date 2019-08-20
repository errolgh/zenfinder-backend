class AuthController < ApplicationController

  def create
    @user = User.find_by(user_name: params[:user_name])
      if @user && @user.authenticate(params[:password])

        payload = {"user_id": @user.id}
        encode(payload)

        token = encode(payload)
        # byebug
        render json: {
          user: @user,
          token: token,
          authenticated: true
        }
      else
        render json: {message: "Incorrect username/password combination."},
        authenticated: false
      end
  end
end
#
