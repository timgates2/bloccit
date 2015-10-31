class AddUserToPosts < ActiveRecord::Migration
  def change
    add_column :posts
    add_index :posts
  end
end
