class JoinTableCartItem < ApplicationRecord

  belongs_to :cart
  belongs_to :item
  has_many :users, through: :carts

end
