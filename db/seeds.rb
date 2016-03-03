# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require "csv"

CSV.foreach('db/seeds_csv/prefectures.csv') do |row|
  Prefecture.create(:id => row[0], :prefecture => row[1], :prefecture_ruby => row[2], :capital => row[3], :capital_ruby => row[4])
end