class PostsController < ApplicationController
  before_action :find_post, only: [:show, :edit, :update, :destroy, :like]
  
  def new
    @post = Post.new
  end

  def like
    Like.create(post: @post, blogger: @post.blogger)
    redirect_to post_path(@post)
  end
  
  def show

  end

  # def index
  #   @posts = Post.all
  # end

  def edit

  end

  def create
    @post = Post.new(post_params)

    if @post.valid?
      @post.save
      redirect_to post_path(@post)
    else
      render :new
    end
  end

  def update
    if @post.update(post_params)
      redirect_to post_path(@post)
    else
      render :edit
    end
  end

  def destroy
    @post.destroy
    redirect_to posts_path
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, :likes, :blogger_id, :destination_id)
  end

  def find_post
    @post = Post.find(params[:id])
  end
end
