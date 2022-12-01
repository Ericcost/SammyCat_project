class CheckoutController < ApplicationController
  def create
    @total = params[:total].to_d
    @session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items: [
        {
          price_data: {
            currency: 'eur',
            unit_amount: (@total*100).to_i,
            product_data: {
              name: 'Rails Stripe Checkout',
            },
          },
          quantity: 1
        },
      ],
      mode: 'payment',
      success_url: checkout_success_url + '?session_id={CHECKOUT_SESSION_ID}',
      cancel_url: checkout_cancel_url
    )
    redirect_to @session.url, allow_other_host: true
  end

  def success
    @session = Stripe::Checkout::Session.retrieve(params[:session_id])
    @payment_intent = Stripe::PaymentIntent.retrieve(@session.payment_intent)
    new_order = Order.create(user_id: current_user.id)
    current_user_cart_content.each do |cart_item|
      JoinTableOrderItem.create(order_id: new_order.id, item_id: cart_item.id, quantity: cart_item.quantity)
    end
    JoinTableCartItem.where(cart_id: current_user_cart.id).destroy_all
  end

  def cancel
  end
end