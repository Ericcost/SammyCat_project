class Order < ApplicationRecord
  after_create :order_send

  after_create :order_admin_send

  def order_admin_send
    @admin = User.where(is_admin: true)
    @admin.each do |admin|
      AdminMailer.order_admin_email(admin).deliver_now
    end
  end

  def order_send
    UserMailer.order_email(@user).deliver_now
  end

  belongs_to :user
  has_many :join_table_order_items
  has_many :items, through: :join_table_order_items
  
end
