json.array!(@prefectures) do |prefecture|
  json.extract! prefecture, :id, :prefecture, :prefecture_ruby, :capital, :capital_ruby
end
