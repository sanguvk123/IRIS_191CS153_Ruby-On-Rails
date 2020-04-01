class RemoveClaimFromProducts < ActiveRecord::Migration[5.1]
  def change
    remove_column :products, :claim, :string
  end
end
