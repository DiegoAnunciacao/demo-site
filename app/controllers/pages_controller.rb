class PagesController < ApplicationController
  def home
    @icons = StaticContent::HomeIcons.all
    @covers = StaticContent::HomeCovers.all
  end

  def about
    @experiences = StaticContent::AboutExperiences.all
    @notes = StaticContent::AboutNotes.all
  end

  def portfolio
    @galleries = Gallery.all
  end

  def products
    @products = Product.all
  end

  def contact
  end
end
