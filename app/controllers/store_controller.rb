class StoreController < ApplicationController

  def index
    @items = Item.available_items
  end

end
