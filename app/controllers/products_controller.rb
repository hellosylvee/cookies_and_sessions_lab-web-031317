class ProductsController < ApplicationController
  def index
    @cart = cart
  end

  # 'cart' is a method, and all user inputs are inserted in the method.
  def add
    updated_cart = cart << params[:product]
    session[:cart] = updated_cart
    redirect_to products_path
  end
end
