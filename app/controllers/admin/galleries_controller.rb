class Admin::GalleriesController < Admin::ApplicationController
  before_action :set_gallery, only: [ :edit, :update, :destroy ]
  def index
    @galleries= Gallery.all
  end
  def new
    @gallery = Gallery.new
  end

  def create
    @gallery = Gallery.new(galleries_params)
    @gallery.user = current_user

    if @gallery.save
      redirect_to pages_portfolio_path, notice: "Gallery successful created"
    else
      render :new, status: :unprocessable_entity # importante para mostrar os erros
    end
  end

  def edit
  end

  def update
    if @gallery.update(galleries_params)
      redirect_to gallery_path(@gallery), notice: "Client successful updated"
    else
      render :edit, status: :unprocessable_entity # importante para mostrar os erros
    end
  end

  def destroy
    @gallery.destroy
    redirect_to root_path, notice: "Gallery destroyed"
  end

  private

  def galleries_params
    params.require(:gallery).permit(:title, images: [])
  end

  def set_gallery
    @gallery = Gallery.find(params[:id])
  end
end
