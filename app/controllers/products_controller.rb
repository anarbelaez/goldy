# frozen_string_literal: true

class ProductsController < ApplicationController
  before_action :set_product, only: %i[show]
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @products = Product.all
  end

  def show; end

  private

  def set_product
    @product = Product.find(params[:id])
  end
end
