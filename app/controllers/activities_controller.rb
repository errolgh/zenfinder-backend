class ActivitiesController < ApplicationController
  def index
    render json: Activity.all
  end

  def show
    render json: Activity.find(params[:id]).to_json(default)
  end

  private

  def default
    {
      :include => {
        :users => {
          :except => [:updated_at, :created_at]
        }
      }
    }
  end
end
