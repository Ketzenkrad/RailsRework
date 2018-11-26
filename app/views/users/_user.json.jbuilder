json.extract! user, :id, :name, :email, :moderator, :creator, :banned, :comment_id, :visible, :created_at, :updated_at
json.url user_url(user, format: :json)
