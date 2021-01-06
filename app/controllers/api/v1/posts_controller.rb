class Api::V1::PostsController < ApplicationController
    
    def show
        post = Post.find(params[:id])
        render json: post
    end

    def index
        posts = Post.all 
        render json: posts 
    end 

    def create
        post = Post.create(post_params)
        render json: post
    end

    def new 
        post = Post.new
        render json: post 
    end 

    def update 
        post = Post.find(params[:id])
        render json: post 
    end 

    def destroy
        post = Post.find(params[:id])
        post.destroy 
    end

private 

    def post_params 
        params.require(:post).permit(:caption, :img_url, :like, :trip_id)
    end

end
