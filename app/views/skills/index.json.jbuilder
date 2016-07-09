json.array!(@skills) do |skill|
  json.extract! skill, :id, :skilltype, :title, :proficiency, :description
  json.url skill_url(skill, format: :json)
end
