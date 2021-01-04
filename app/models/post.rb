class Post < ApplicationRecord
  belongs_to :trip
  delegate :user, to: :trip
end
