class AddUserIdToShareholders < ActiveRecord::Migration
  def change
    add_column :shareholders, :user_id, :integer
  end
end
