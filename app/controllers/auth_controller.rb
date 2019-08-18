class AuthController < ApplicationController

  def create
    byebug
    @user = User.find_by(user_name: params[:user_name])
      if @user && @user.authenticate(params[:password])

        payload = {"user_id": @user.id}
        encode(payload)

        token = encode(payload)
        render json: {
          user: @user,
          token: token
        }
      else
        render json: {message: "Incorrect username/password combination."}
      end
  end
end
#
