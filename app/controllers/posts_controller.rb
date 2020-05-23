class PostsController < ApplicationController

    def new
        @post = Post.new
    end

    def create
        @post = Post.new(post_params)
        if @post.save
            flash[:notice] = "Post crée"
            redirect_to post_path(@post)
        else
            render 'new'
        end
    end

    def show
        @post = Post.find(params[:id])
    end

    def edit
        @post = Post.find(params[:id])
    end

    def update
        @post = Post.find(params[:id])
        if @post.update(post_params)
            flash[:notice] = "Post mis à jour"
            redirect_to post_path(@post)
        else
            render 'edit'
        end
    
    end


  
    private

    def post_params
        params.require(:post).permit(:title, :description, :image)
    end
end