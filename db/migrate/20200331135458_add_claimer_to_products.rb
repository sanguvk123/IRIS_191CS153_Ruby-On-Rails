class AddClaimerToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :claimer, :integer
  end
end
