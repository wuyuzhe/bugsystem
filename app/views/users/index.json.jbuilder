json.array!(@users) do |user|
  json.extract! user, :id, :password_digest, :email, :wechat
  json.url user_url(user, format: :json)
end
