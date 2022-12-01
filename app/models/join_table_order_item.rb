class JoinTableOrderItem < ApplicationRecord

  belongs_to :order
  belongs_to :item
  has_many :users, through: :orders

end
