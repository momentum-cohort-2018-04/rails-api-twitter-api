
json.array! @posts do |post|
  json.extract! post, :id, :text
end