class PhotosController < ApplicationController
  def index
    @photos = Photo.all
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = current_user.photos.create(photos_params)

    if @photo.save
      redirect_to root_path, notice: "La Evidencia fue creada con exito"
    else
      render :new
    end
  end

  def show
    @photo = Photo.find(params[:id])
  end

  def edit
    @photo = Photo.find(params[:id])
  end

  def update
    @photo = Photo.find(params[:id])
    if @photo.update(photos_params)
      redirect_to photos_path, notice: "La evidencia se ha modificado con exito"
    else
      render :edit
    end
end

  private
    def photos_params
      params.require(:photo).permit(:title, :image, :course_id)
    end
end
