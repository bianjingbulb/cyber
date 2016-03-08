class CreatePlayHistory < ActiveRecord::Migration
  def change
    create_table :play_histories do |t|
      t.integer :music_id
      t.datetime :created_at
    end
  end
end
