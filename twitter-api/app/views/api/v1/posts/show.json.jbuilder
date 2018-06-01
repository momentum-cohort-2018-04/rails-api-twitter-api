
json.links do
  json.self api_v1_post_url(@post)
  json.list api_v1_posts_url
  json.update do
    json.method "PUT"
    json.href api_v1_post_url(@post)
  end
  json.delete do
    json.method "DELETE"
    json.href api_v1_post_url(@post)
  end
end
json.data do
  json.id @post.id
  json.attributes do
    json.text @post.text
  end
end