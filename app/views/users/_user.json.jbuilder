json.extract! user, :id, :username, :email, :cash, :own, :bought, :trades, :created_at, :updated_at
json.url user_url(user, format: :json)
