class DashboardController < ApplicationController
  def uploaded_products
    @products = Product.all
  end

  def my_products
    @products = Product.all
  end
end
