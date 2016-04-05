json.array!(@backgrounds) do |background|
  json.extract! background, :id, :titulo
  json.url background_url(background, format: :json)
end
