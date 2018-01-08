class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  respond_to :json, :html

  def index
    @posts = Post.all
  end

  def show
  end

  def new
    @post = Post.new
  end

  def edit
  end

  def create
    @post = Post.create(post_params)

    respond_with(@post, location: @post)
  end

  def update
    @post.update(post_params)

    respond_with(@post, location: @post)
  end

  def destroy
    @post.destroy

    respond_with(@post)
  end

  private
  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :boby, :user)
  end
end
