class UsersController < ApplicationController
  
  def index
  end

  def create
  	if params[:password] == params[:confirm_password]
      user = User.create( user_params )
      session[:id] = user.id
  	end
    if user && user.save
      redirect_to "/posts/show"
    else
      flash[:errors] = "Please enter correct information."
      render "index"
    end
  end

  def login
  	user = User.find_by(:email => params[:email])
    if user && user.password_digest == params[:password]
      session[:id] = user.id
      redirect_to "/posts/show"
    else
      flash[:errors] = "Password or email is incorrect."
      render "index"
    end
  end

  def logout
    session[:id] = nil
    render "index"
  end

  def show
  	@user = User.find(params[:id])
  end

  private 
  def user_params
    params.require(:users).permit(:name, :alias, :email, :password_digest)
  end
end
