module CartsHelper

  def current_user_cart
    if current_user
      return current_user.cart
    end
  end

  def current_user_cart_content
    if current_user
      return current_user_cart.join_table_cart_items
    end
  end

  def cart_total
    @total = 0
    current_user_cart_content.each do |cart_item|
      @total = @total + (Item.find(cart_item.item_id).price * cart_item.quantity)
    end
    return @total
  end

  
end
