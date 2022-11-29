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

end
