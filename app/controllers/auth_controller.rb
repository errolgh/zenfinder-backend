class AuthController < ApplicationController

  def create

    @user = User.find_by(user_name: params[:user_name])
      if @user && @user.authenticate(params[:password])
        render json: {user: @user}
      else
        render json: {message: "Incorrect username/password combination."}
      end
  end
end
