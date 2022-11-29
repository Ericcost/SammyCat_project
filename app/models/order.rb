class Order < ApplicationRecord
  after_create :order_send

  def order_send
    UserMailer.order_email(@user).deliver_now
  end

  belongs_to :user
  has_many :join_table_order_items
  has_many :items, through: :join_table_order_items
  
end
