class PostSerializer < ActiveModel::Serializer
    attributes :id, :caption, :img_url, :like
  end
  