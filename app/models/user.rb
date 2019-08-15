class User < ApplicationRecord
  has_many :reviews
  has_many :locations, through: :reviews
  has_many :user_activities
  has_many :activities, through: :user_activities
end
