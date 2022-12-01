module OrdersHelper

  def current_user_orders
    return Order.where(user_id: current_user.id)
  end
  
end
