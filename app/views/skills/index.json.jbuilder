json.array!(@skills) do |skill|
  json.extract! skill, :id, :skilltype, :title
  json.url skill_url(skill, format: :json)
end
