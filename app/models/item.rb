class Item < ApplicationRecord

has_many :join_table_cart_items
has_many :carts, through: :join_table_cart_items
has_many :users, through: :carts

has_many :join_table_order_items
has_many :orders, through: :join_table_order_items
has_many :users, through: :orders
	
validates :title,
  presence: true

validates :description,
	presence: true
	
validates :price,
	presence: true,
	numericality: { only_integer: true }

validates :image_url,
	presence: true

end
