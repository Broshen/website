json.array!(@experiences) do |experience|
  json.extract! experience, :id, :title, :start, :end, :location, :summary, :thumbnail, :description, :links
  json.url experience_url(experience, format: :json)
end
