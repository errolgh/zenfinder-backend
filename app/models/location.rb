class Location < ApplicationRecord
  has_one_attached :image
  has_many :reviews
  has_many :users, through: :reviews
  has_many :location_activities
  has_many :activities, through: :location_activities
end
