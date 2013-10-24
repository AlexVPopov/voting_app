    class ModifyUsers < ActiveRecord::Migration
      def up
        add_column :users, :username, :string
        add_index :users, :username, unique: true, name: 'index_users_on_username', using: 'btree'
        remove_column :users, :email, :string
      end

      def down
        remove_column :users, :username, :string
        remove_index :users, :username
        add_column :users, :email, :string
      end
    end
