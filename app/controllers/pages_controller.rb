class PagesController < ApplicationController
  def home
  end

  def about
  end

  def portfolio
    @galleries = Gallery.all
  end

  def product
    @products = Product.all
  end

  def contact
  end
end
