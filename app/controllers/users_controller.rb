class UsersController < ApplicationController

  def dashboard
    if current_user
      @photos = current_user.photos
    else
      redirect_to :new_user_session
    end
  end


  def show
    @user = User.find(params[:id])
  end


end
