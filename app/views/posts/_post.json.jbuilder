json.extract! post, :id, :name, :title, :content, :image, :author_id, :created_at, :updated_at
json.url post_url(post, format: :json)
