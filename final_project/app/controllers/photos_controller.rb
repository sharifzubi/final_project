class PhotosController < ApplicationController

  def index
    @photos = Photo.all
  end


  def new
    @photo = Photo.new
  end


  def create
    @photo = Photo.new params[:photo]
    @photo.user = current_user
    if @photo.save
      session[:photo_id] = @photo.id
      redirect_to @photo.user
    else
      render :new
    end
  end


  def show
    @photo = Photo.find(params[:id])
  end


  def edit

  end


  def update
    photo = Photo.find(params[:id])
    photo.update_attributes(params[:photo])
    redirect_to(photo)
  end


  def destroy
    photo = Photo.find(params[:id])
    photo.delete
    redirect_to(photos_path)
  end


end
