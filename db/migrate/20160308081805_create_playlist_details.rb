class CreatePlaylistDetails < ActiveRecord::Migration
  def change
    create_table :playlist_details do |t|
      t.string :playlist_name
      t.integer :number
      t.integer :music_id
    end
  end
end
