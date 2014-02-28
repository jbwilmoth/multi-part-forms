class CreateAlbums < ActiveRecord::Migration
  def change
  	create_table :albums do |t|
  		t.string :title
  		t.string :photo
  		t.belongs_to :user
  		
  		t.timestamps
  	end
  end
end
