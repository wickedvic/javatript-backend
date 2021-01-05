class UserSerializer < ActiveModel::Serializer
    attributes :id, :name, :username
    has_many :trips
    has_many :posts, through: :trips 
  end
  