class AddMyproductToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :myproduct, :boolean, default: false
  end
end
