class User < ApplicationRecord
    has_many :trips, dependent: :destroy
    has_many :posts, through: :trips
end
