class ModifyAdminUsers < ActiveRecord::Migration
  def up
    add_column :admin_users, :username, :string
    add_index :admin_users, :username, unique: true, name: 'index_admin_users_on_username', using: 'btree'
    remove_index :admin_users, :email
  end

  def down
    remove_column :admin_users, :username, :string
    remove_index :admin_users, :username
    add_index :admin_users, :email, unique: true, name: 'index_admin_users_on_email', using: 'btree'
  end
end
