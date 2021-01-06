class TripSerializer < ActiveModel::Serializer
  attributes :id, :location, :date, :user_id, :latitude, :longitude
  has_many :posts
end
