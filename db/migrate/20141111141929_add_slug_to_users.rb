class AddSlugToUsers < ActiveRecord::Migration
  def up
    add_column :users, :slug, :string unless column_exists? :users, :slug
  end

  def down
    remove_column :users, :slug if column_exists? :users, :slug
  end
end
