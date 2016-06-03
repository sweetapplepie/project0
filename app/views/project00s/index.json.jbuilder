json.array!(@project00s) do |project00|
  json.extract! project00, :id
  json.url project00_url(project00, format: :json)
end
