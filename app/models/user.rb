class User < ApplicationRecord
  has_secure_password
  validates :user_name, uniqueness: { case_sensitive: false }
  has_many :reviews
  has_many :locations, through: :reviews
  has_many :user_activities
  has_many :activities, through: :user_activities
end
