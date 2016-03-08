# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require "csv"

#CSV.foreach('db/seeds_csv/prefectures.csv') do |row|
#  Prefecture.create(:id => row[0], :prefecture => row[1], :prefecture_ruby => row[2], :capital => row[3], :capital_ruby => row[4])
#end

CSV.foreach('db/seeds_csv/artist.csv') do |row|
  Artist.create(:id => row[0], :name => row[1], :outline => row[2])
end

CSV.foreach('db/seeds_csv/playlist.csv') do |row|
  Playlist.create(:name => row[0], :outline => row[1])
end

CSV.foreach('db/seeds_csv/playlist_detail.csv') do |row|
  PlaylistDetail.create(:playlist_name => row[0], :number => row[1], :music_id => row[2])
end

CSV.foreach('db/seeds_csv/play_history.csv') do |row|
  PlayHistory.create(:id => row[0], :music_id => row[1], :created_at => row[2])
end

CSV.foreach('db/seeds_csv/music.csv') do |row|
  Music.create(:id => row[0], :artist_id => row[1], :title => row[2], :outline => row[3])
end

