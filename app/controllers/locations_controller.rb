class LocationsController < ApplicationController
  def index
    render json: Location.all.to_json(default)
  end

  def show
    render json: Location.find(params[:id]).to_json(default)
  end

  def new
    render json: Location.new
  end

  def create
    render json: Location.create(location_params).to_json(default)
  end

  private

  def location_params
    params.require(:location).permit(:title, :description, :address, :latitude, :longitude)
  end

  def default
    {
      :methods => [:average_rating],
      :include => {
        :reviews => {
          :except => [:updated_at, :created_at],
          :include => {
            :user => {}
          }
        },
        :activities => {
          :except => [:updated_at, :created_at]
        }
      }
    }
  end
end
