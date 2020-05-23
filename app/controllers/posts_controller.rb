class PostsController < ApplicationController

    def index
    end
    
    def new
        @post = Post.new
    end

    def create
        @post = Post.new(post_params)
        @post.save
        redirect_to posts_show(@post)
    end

    def edit
    end

    def destroy
    end

    private

    def post_params
        params.require(:post).permit(:title, :description)
    end
end