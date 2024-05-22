class CartsController < ApplicationController
  before_action :set_cart, only: %i[show empty checkout]

  def show
  end

  def empty
  end

  def checkout
  end

  private

  def set_cart
    @cart = if session[:cart_id]
              Cart.find(session[:cart_id]) || create_new_cart
            else
              create_new_cart
            end
  end

  def create_new_cart
    cart = Cart.create
    session[:cart_id] = cart.id

    cart
  end
end
