class PhotosController < ApplicationController
  def index
    @photos = Photo.all
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.create(photos_params)
    @photo.user = current_user

    if @photo.save
      redirect_to root_path, notice: "La Evidencia fue creada con exito"
    else
      render :new
    end
  end

  private
    def photos_params
      params.require(:photo).permit(:title)
    end
end
