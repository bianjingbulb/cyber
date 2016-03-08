class CreatePlaylist < ActiveRecord::Migration
  def change
    create_table :playlists do |t|
      t.string :name
      t.string :outline
    end
  end
end
