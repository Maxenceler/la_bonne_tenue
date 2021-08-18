class RenameColumn < ActiveRecord::Migration[6.0]
  def change
    rename_column :bookings, :users_id, :user_id
    rename_column :bookings, :items_id, :item_id
  end
end
