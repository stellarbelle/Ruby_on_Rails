class PostsController < ApplicationController

  def create
  	post = Post.create( post: params[:post], User_id: params[:id] )
  	redirect_to "/posts/show"
  end

  def show
  	@posts = Post.all
  	@user = User.find(session[:id])
  end

  def delete
    post = Post.find(params[:id])
    post.destroy
    redirect_to "/posts/show"
  end
end
