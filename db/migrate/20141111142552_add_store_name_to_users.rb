class AddStoreNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :store_name, :string
    add_index :users, :store_name, unique: true
  end
end
