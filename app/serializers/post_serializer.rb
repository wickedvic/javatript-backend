class PostSerializer < ActiveModel::Serializer
    attributes :id, :caption, :trip_id, :img_url, :like, :comments

    # def avatar
    #   rails_blob_path(object.image, only_path: true) if object.image.attached?
    # end

  end
  