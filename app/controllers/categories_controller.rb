# frozen_string_literal: true

class CategoriesController < ApplicationController
  before_action :set_category, only: %i[show]
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @categories = Category.all
  end

  def show; end

  private

  def set_category
    @category = Category.find(params[:id])
  end
end
