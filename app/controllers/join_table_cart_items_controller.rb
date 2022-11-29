class JoinTableCartItemsController < ApplicationController
  before_action :authenticate_user!, only: [:create, :destroy]

    # POST /orders or /orders.json
    def create
      @itemToAdd = JoinTableCartItem.new(cart_id: current_user.cart.id, item_id: params[:id])
  
      respond_to do |format|
        if @itemToAdd.save
          format.html { redirect_to order_url(@itemToAdd), notice: "Order was successfully created." }
          format.json { render :show, status: :created, location: @itemToAdd }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @itemToAdd.errors, status: :unprocessable_entity }
        end
      end
    end

  
    # DELETE /orders/1 or /orders/1.json
    def destroy
      @item_to_delete.destroy
  
      respond_to do |format|
        format.html { redirect_to carts_url, notice: "Successfully deleted." }
        format.json { head :no_content }
      end
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_order
        @itemToAdd = Order.find(params[:id])
      end
  
      # Only allow a list of trusted parameters through.
      def order_params
        params.fetch(:order, {})
      end
end
