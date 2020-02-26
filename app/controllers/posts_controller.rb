class PostsController < ApplicationController
  def index
    # @posts = Post.includes(:user).order("created_at DESC")
    @posts = Post.all
  end

  def new
  end

  def create
    @post = Post.new(post_params)
    @post.save
  end

  private
  def post_params
    params.permit(:name, :title, :image, :locate, :url, :content)
  end
end
