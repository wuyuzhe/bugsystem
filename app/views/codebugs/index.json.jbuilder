json.array!(@codebugs) do |codebug|
  json.extract! codebug, :id, :title,:description, :content
  json.url codebug_url(codebug, format: :json)
end
