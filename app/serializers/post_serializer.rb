class PostSerializer < ActiveModel::Serializer
    attributes :id, :caption, :trip_id, :img_url, :like, :comments
  end
  