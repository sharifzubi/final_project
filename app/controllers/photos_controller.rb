class PhotosController < ApplicationController


  def index
    @photos = Photo.all
  end


  def new
    @photo = Photo.new
    @photo.memories.build
    authorize! :new, @photo
  end


  def create
    @photo = Photo.new params[:photo]
    @photo.user_id = current_user.id
    if @photo.save
      session[:photo_id] = @photo.id
      redirect_to dashboard_path
    else
      render :new
    end
    authorize!(:create, @photo || Photo)
  end


  def show
    @photo = Photo.find(params[:id])
    authorize! :show, @photo

  end


  def edit
    @photo = Photo.find(params[:id])
    authorize! :edit, @photo
  end


  def update
    photo = Photo.find(params[:id])
    photo.update_attributes(params[:photo])
    authorize! :update, photo
    redirect_to dashboard_path
  end


  def destroy
    photo = Photo.find(params[:id])
    authorize! :destroy, photo
    photo.delete
    redirect_to dashboard_path
  end


end
