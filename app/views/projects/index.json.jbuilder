json.array!(@projects) do |project|
  json.extract! project, :id, :name, :languages, :summary, :description, :github
  json.url project_url(project, format: :json)
end
