class Item < ApplicationRecord

has_many :join_table_cart_items
has_many :carts, through: :join_table_cart_items
has_many :users, through: :carts

has_many :join_table_order_items
has_many :orders, through: :join_table_order_items
has_many :users, through: :orders
	
validates :title,
  presence: true,
	length: { in: 5..25 }


validates :description,
	presence: true,
	length: { in: 10..280 }

validates :price,
	presence: true,
	numericality: { only_integer: true }

validates :image_url,
	presence: true

end
