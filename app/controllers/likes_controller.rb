class LikesController < ApplicationController

  def create
  	Like.create( User_id: session[:id], Post_id: params[:id] )
  	redirect_to "/posts/show"
  end

  def show
  	@post = Post.find(params[:id])
  	@likes = Like.where(:Post_id => params[:id]).group(:User_id).count
  end

end
