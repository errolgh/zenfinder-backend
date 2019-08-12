class LocationSerializer < ActiveModel::Serializer
  attributes :id, :title, :latitude, :longitude, :description, :address, :rating, :activity_id
end
