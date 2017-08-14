class CreateAlbums < ActiveRecord::Migration[5.0]
  def change
    create_table :albums do |t|
      t.string :title
      t.integer :year
      t.integer :artist_id

      t.timestamps
    end
  end
end
