class DashboardController < ApplicationController

  #Dashboard for uploaded_products
  #GET all products
  def uploaded_products
    @products = Product.all
  end

  #Dashboard for my_products
  #GET all products
  def my_products
    @products = Product.all
  end
end
