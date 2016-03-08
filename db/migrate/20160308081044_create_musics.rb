class CreateMusics < ActiveRecord::Migration
  def change
    create_table :musics do |t|
      t.integer :artist_id
      t.string :title
      t.string :outline
    end
  end
end
