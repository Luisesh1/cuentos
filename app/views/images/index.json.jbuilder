json.array!(@images) do |image|
  json.extract! image, :id, :titulo
  json.url image_url(image, format: :json)
end
