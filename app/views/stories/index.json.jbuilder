json.array!(@stories) do |story|
  json.extract! story, :id, :titulo, :autor, :hombre
  json.url story_url(story, format: :json)
end
