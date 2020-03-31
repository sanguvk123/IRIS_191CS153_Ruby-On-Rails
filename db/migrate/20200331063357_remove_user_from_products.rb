class RemoveUserFromProducts < ActiveRecord::Migration[5.1]
  def change
    remove_reference :products, :user_id, foreign_key: true
  end
end
