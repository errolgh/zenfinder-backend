class Location < ApplicationRecord
  has_one_attached :image
  has_many :reviews
  has_many :users, through: :reviews
  has_many :location_activities
  has_many :activities, through: :location_activities

  def total_ratings
    total = 0
    self.reviews.each do |review|
      total += review.rating
    end
    total
  end

  def average_rating
    average = (self.total_ratings.to_f / self.reviews.length.to_f).round(1)
    return {average_review: average}
    # return {message: "hello world"}
  end
end
