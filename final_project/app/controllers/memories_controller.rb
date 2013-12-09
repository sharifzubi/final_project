class MemoriesController < ApplicationController

  def index
    @memories = Memory.all
  end


  def new
    @photo = Photo.find params[:photo]
    @memory = Memory.new
  end


  def create
    @memory = Memory.new(params[:memory])
    @memory.photo_id = params[:photo_id]
    @memory.user = current_user
    if @memory.save
      redirect_to @memory.photo, notice: "Memory created successfully!"
    else
      flash[:alert] = "Memory NOT created!"
      render :new
  end


  def show
    @memory = Memory.find(params[:id])
  end


  def edit
    @memory = Memory.find(params[:id])
  end


  def update
    memory = Memory.find(params[:id])
    memory.update_attributes(params[:memory])
    redirect_to(memory)
  end


  def destroy
    memory = Memory.find(params[:id])
    memory.delete
    redirect_to(memories_path), notice: "Memory successfully DELETED!!!"
    #redirect_to(memory.photo)
  end


end
