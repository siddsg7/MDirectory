json.extract! post, :id, :title, :short_name, :hospital, :body, :related_posts, :offering_salary, :location, :owner_id, :created_at, :updated_at
json.url post_url(post, format: :json)