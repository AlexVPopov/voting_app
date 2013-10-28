class ModifyAdminUsers < ActiveRecord::Migration
  def up
    add_column :admin_users, :username, :string
    add_index :admin_users, :username, unique: true, name: 'index_admin_users_on_username', using: 'btree'
  end

  def down
    remove_column :admin_users, :username, :string
    remove_index :admin_users, :username
  end
end
