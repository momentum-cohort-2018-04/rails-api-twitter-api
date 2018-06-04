json.array! @users do |user|
  json.username user.username
  json.created_at user.created_at
end