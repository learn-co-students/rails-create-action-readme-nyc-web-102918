class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new
    @post.title = params[:title] #params allows you to access the inputs values in a form
    @post.description = params[:description]
    @post.save
    #post information, whatever the user inputs this method saves into db with key and value defined


    redirect_to post_path(@post) #redirect to show
  end
end
