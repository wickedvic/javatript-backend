class TripSerializer < ActiveModel::Serializer
  attributes :id, :location, :date
  has_many :posts
end
