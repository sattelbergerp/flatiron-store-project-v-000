class CategoriesController < ApplicationController

  before_action :set_category

  private
  def set_category
    @category = Category.find(params[:id])
  end

end
