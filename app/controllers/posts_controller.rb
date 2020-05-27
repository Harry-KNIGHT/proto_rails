class PostsController < ApplicationController


    def index  
        @posts = Post.all 
    end
    def new
        @post = Post.new
    end

    def create
        @post = Post.new(post_params)
        if @post.save
            flash[:success] = "Post crée"
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
            flash[:success] = "Post mis à jour"
            redirect_to post_path(@post)
        else
            render 'edit'
        end
    end

    def destroy
        @post = Post.find(params[:id])
        @post.destroy
        flash[:success] = "Post supprimé"
        redirect_to posts_path
    end


  
    private

    def post_params
        params.require(:post).permit(:title, :description, :image)
    end
end