class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def index
    @posts = Post.all
  end

  def show
  end

  def new
    @post = current_user.created_posts.build
  end

  def edit
  end

  def create
    @post = current_user.created_posts.build(post_params)
    if @post.save
      redirect_to @post, notice: '作成しました'
    else
      render :new
    end
  end

  def update
    if @post.update(post_params)
      redirect_to @post, notice: '更新しました'
    else
      render :edit
    end
  end

  def destroy
    @post.destroy!
    redirect_to posts_path, notice: '削除しました'
  end

  private
    def set_post
      @post = current_user.created_posts.find(params[:id])
    end

    def post_params
      params.require(:post).permit(:title, :body)
    end
end
