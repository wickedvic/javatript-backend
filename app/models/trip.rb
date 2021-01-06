class Trip < ApplicationRecord
  belongs_to :user
  has_many :posts, dependent: :destroy
  geocoded_by :location 
  after_validation :geocode, :if => :location_changed? 
end
