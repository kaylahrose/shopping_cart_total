class Api::V1::ShoppingCartsController < ApplicationController
  def calculate_total
    require 'pry'; binding.pry
  end

  private

  def cart_params
    params[:cart].first.permit(:item, :price, :quantity)
  end
end
