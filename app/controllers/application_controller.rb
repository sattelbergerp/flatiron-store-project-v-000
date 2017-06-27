class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :set_categories

  helper_method :current_cart
  def current_cart
    return current_user.current_cart if current_user
  end

  private
  def set_categories
    @categories = Category.all
  end

end
