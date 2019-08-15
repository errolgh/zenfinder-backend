class Activity < ApplicationRecord
  has_many :location_activities
  has_many :locations, through: :location_activities
  has_many :user_activities
  has_many :users, through: :user_activities
end
