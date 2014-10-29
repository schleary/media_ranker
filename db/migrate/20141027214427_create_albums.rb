class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :name
      t.integer :rank
      t.string :artist
      t.text :description

      t.timestamps
    end
  end
end
