class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :name
      t.string :artist
      t.string :direct_upload_url, null: false
      t.attachment :upload
      t.boolean :processed, defauls: false, null: false
      t.timestamps null: false
    end
    add_index :songs, :processed
  end
end
