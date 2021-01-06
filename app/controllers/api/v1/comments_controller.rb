class Api::V1::CommentsController < ApplicationController
    
    def show
        comment = Comment.find(params[:id])
        render json: comment
    end

    def index
        comments = Comment.all 
        render json: comments 
    end 

    def create
        comment = Comment.create(comment_params)
        render json: comment
    end

    def new
        comment = Comment.new 
        render json: comment
    end

    def update 
        comment = Comment.find(params[:id])
        comment.update(comment_params)
        render json: comment 
    end 
    
private 

    def comment_params 
        params.require(:comment).permit(:username, :content, :post_id)
    end
end
