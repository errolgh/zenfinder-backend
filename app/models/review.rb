class Review < ApplicationRecord
  belongs_to :user
  belongs_to :location

  def all_reviews
    Location.all.select do |location|
      self.review.id  == location.review.id
    end
  end

  def average_rating
    
  end
end
