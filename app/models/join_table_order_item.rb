class JoinTableOrderItem < ApplicationRecord
  belongs_to :order
  has_many :users, through: :orders
  has_many :items
end
