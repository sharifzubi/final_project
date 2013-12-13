class UsersController < ApplicationController


  def dashboard
    if current_user
      @photos = current_user.photos
    else
      redirect_to :new_user_session
    end
  end

  def index
    @users = User.all
    @users -= [current_user]
  end

  def show
    @user = User.find(params[:id])
    authorize! :show, @user
  end

  def journey
    @photos = current_user.photos.includes(:location)
    @locations
  end
end
