class CategoriesController < ApplicationController

    # show one category and all of its places
  def show
    @category = Category.find(params[:id])
    @places = @category.places
  end
  
end
