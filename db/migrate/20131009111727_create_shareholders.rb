class CreateShareholders < ActiveRecord::Migration
  def change
    create_table :shareholders do |t|
      t.integer :uid, limit: 8
      t.string :name
      t.integer :shares

      t.timestamps
    end
  end
end
