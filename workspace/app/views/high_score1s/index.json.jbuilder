json.array!(@high_score1s) do |high_score1|
  json.extract! high_score1, :id, :game, :score, :name
  json.url high_score1_url(high_score1, format: :json)
end
