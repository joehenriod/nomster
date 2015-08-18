class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|

      t.text :message
      t.string :rating
      t.boolean :recommend

      t.integer :user_id
      t.integer :place_id
      t.timestamps
      t.timestamps
    end

    add_index :comments, [:user_id, :place_id]
    add_index :comments, :place_id
  end
end
