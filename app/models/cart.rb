class Cart < ActiveRecord::Base

  belongs_to :user
  has_many :line_items
  has_many :items, through: :line_items

  def total
    price = 0.0
    line_items.each do |line_item|
      price+=line_item.quantity*line_item.item.price
    end
    price
  end

  def add_item(item)
    line_item = line_items.find_by(item_id: item)
    line_item = line_items.build(item_id: item, cart: self, quantity: 0) if !line_item
    line_item.quantity+=1
    line_item
  end

end
