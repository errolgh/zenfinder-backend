class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :description, :rating, :user_id, :location_id
end
