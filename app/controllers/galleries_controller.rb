class GalleriesController < ApplicationController
  def index
    @galleries= Gallery.all
  end

  def show
    @gallery = Gallery.find(params[:id])
  end

  def new
    @gallery = Gallery.new
  end

  def create
    @gallery = Gallery.new(galleries_params)
    @gallery.user = current_user

    if @gallery.save
      redirect_to gallery_path(@gallery), notice: "Galeria criada com sucesso!"
    else
      render :new, status: :unprocessable_entity # importante para mostrar os erros
    end
  end

  def edit
    @gallery = Gallery.find(params[:id])
  end

  def update
    @gallery = Gallery.find(params[:id])
    if @gallery.update(galleries_params)
      redirect_to gallery_path(@gallery), notice: "Client successful updated"
    else
      render :edit, status: :unprocessable_entity # importante para mostrar os erros
    end
  end

  def destroy
    @gallery = Gallery.find(params[:id])
    @gallery.destroy

    redirect_to root_path, notice: "Client successful deleted"
  end

  private

  def galleries_params
    params.require(:gallery).permit(:title)
  end
end
