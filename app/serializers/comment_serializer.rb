class CommentSerializer < ActiveModel::Serializer
    attributes :username, :content, :id, :post_id
  end
  