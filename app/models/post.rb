class Post < ApplicationRecord
  belongs_to :trip
  has_many :comments, dependent: :destroy 
  delegate :user, to: :trip
end
