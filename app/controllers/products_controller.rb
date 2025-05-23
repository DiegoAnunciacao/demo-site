class ProductsController < ApplicationController
  before_action :set_product, only: [ :edit, :update, :destroy ]

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    @product.user = current_user

    if @product.save
      redirect_to product_path(@product), notice: "Product successful created"
    else
      rend :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @product.update(product_params)
      redirect_to product_path(@product), notice: "Product successful updated"
    else
      rend :update, status: :unprocessable_entity
    end
  end

  def destroy
    @product.destroy
    redirect_to products_path, notice: "Product destroyed"
  end

  private

  def product_params
    params.require(:product).permit(:title, :description, :price, :image)
  end

  def set_product
    @product = Product.find(params(:id))
  end
end
