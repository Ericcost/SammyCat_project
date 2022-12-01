class ApplicationController < ActionController::Base

  include CartsHelper
  include JoinTableCartItemsHelper
  include OrdersHelper

  before_action :set_render_cart
  before_action :initialize_cart

  def set_render_cart
    @render_cart = true
  end

  def initialize_cart
    @cart ||= Cart.find_by(id: session[:cart_id])
    if current_user
      if @cart.nil?
        @cart= Cart.create(user_id: current_user.id)
        session[:cart_id] = @cart.id
      end
    end
   end
end
