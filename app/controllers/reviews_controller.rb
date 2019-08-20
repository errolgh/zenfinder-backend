class ReviewsController < ApplicationController
  def index
    render json: Review.all.to_json(default)
  end

  def new
    render json: Review.new
  end
  
  private

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
