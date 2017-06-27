class LineItemsController < ApplicationController

  def create
    if !current_cart
        current_user.current_cart = current_user.carts.create
        current_user.save
    end
    current_cart.add_item(params[:item_id]).save()
    redirect_to cart_path(current_cart)
  end

end
