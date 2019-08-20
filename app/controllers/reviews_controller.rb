class ReviewsController < ApplicationController
  def index
    render json: Review.all.to_json(default)
  end

  def show
    render json: Review.find(params[:id]).to_json(default)
  end

  def new
    render json: Review.new
  end

  def create
    render json: Review.create(review_params).to_json(default)

  end

  private

  def review_params
    params.require(:review).permit(:title, :description, :rating, :location_id, :user_id)
  end

  def default
    {
      :include => {
        :user => {
          :except => [:updated_at, :created_at]
        },
        :location => {
          :except => [:updated_at, :created_at]
        }
      }
    }
  end
end
