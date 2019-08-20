class UsersController < ApplicationController
  def show
    render json: User.find(params[:id]).to_json(default), status: :accepted
  end

  private

  def default
    {
      :include => {
        :reviews => {
          :except => [:updated_at, :created_at]
        },
        :activities => {
          :except => [:updated_at, :created_at]
        }
      }
    }
  end
end
