class UsersController < ApplicationController
  def signup
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user= User.new
  end
  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:success] ="welcome to the Sample App!"
      redirect_to @user
# Handle a successful save.
    else
      render 'new'
    end
  end


end