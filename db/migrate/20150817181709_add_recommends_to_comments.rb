class AddRecommendsToComments < ActiveRecord::Migration
  def change

  	 change_table :comments do |t|
      t.boolean :recommend
     end

  end
end
