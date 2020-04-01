class RemoveClaimerFromProducts < ActiveRecord::Migration[5.1]
  def change
    remove_column :products, :claimer, :string
  end
end
