class UsersController < ApplicationController

  def dashboard
    @photos = current_user.photos
  end


  def show
    @user = User.find(params[:id])
  end


end
