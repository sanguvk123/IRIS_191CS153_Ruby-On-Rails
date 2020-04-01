class AddClaimToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :claim, :string, default: [@product.user.email], presence: true
  end
end
