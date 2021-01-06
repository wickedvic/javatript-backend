class TripSerializer < ActiveModel::Serializer
  attributes :id, :location, :date, :user_id
  has_many :posts
end
