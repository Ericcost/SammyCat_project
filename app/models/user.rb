class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_one_attached :avatar
  has_one :cart
  has_many :join_table_cart_items, through: :carts
  has_many :items, through: :join_table_cart_items
  
  has_many :orders
  has_many :join_table_order_items, through: :orders
  has_many :items, through: :join_table_order_items
end
