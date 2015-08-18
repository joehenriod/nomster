class AddPhotoToComments < ActiveRecord::Migration
  def change
  	change_table :comments do |t|
      t.string :photo
    end
  end
end
