json.array!(@bugtypes) do |bugtype|
  json.extract! bugtype, :id, :typename
  json.url bugtype_url(bugtype, format: :json)
end
