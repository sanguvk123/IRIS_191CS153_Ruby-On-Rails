class AddUserIdToProducts < ActiveRecord::Migration[5.1]
  def change
    add_reference :products, :user_id, foreign_key: true
  end
end
