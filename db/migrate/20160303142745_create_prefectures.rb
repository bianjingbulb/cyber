class CreatePrefectures < ActiveRecord::Migration
  def change
    create_table :prefectures do |t|
      t.string :prefecture
      t.string :prefecture_ruby
      t.string :capital
      t.string :capital_ruby

      t.timestamps null: false
    end
  end
end
