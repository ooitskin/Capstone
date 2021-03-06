class PostsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_post, only: [:show, :edit, :update, :destroy, :like]

  def index
    @posts = Post.all.order(created_at: :desc)
  end

  def show
    @post = Post.find(params[:id])
  end

  # The build_association method returns a new object of the associated type. This object will be instantiated from the passed attributes, and the link through this object's foreign key will be set, but the associated object will not yet be saved.
  # http://edgeguides.rubyonrails.org/association_basics.html
  def new
    @post = current_user.posts.build
  end


  def create
    @post = current_user.posts.build(post_params)

    if @post.save
      redirect_to posts_path
    else
      puts @post.errors.messages
      render :new
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    if @post.update(post_params)
      redirect_to posts_path
    else
      render :edit
    end
  end

  def destroy
    @post.destroy
    redirect_to root_path
  end

  def upvote 
    @post = Post.find(params[:id])
    @post.upvote_by current_user
    redirect_to posts_path
  end  

  def downvote
    @post = Post.find(params[:id])
    @post.downvote_by current_user
    redirect_to posts_path
  end

  private

  def post_params
    params.require(:post).permit(:image, :caption)
  end

  def set_post
    @post = Post.find(params[:id])
  end
end
