json.extract! user, :id, :name, :email, :phone, :password, :apartment_id, :created_at, :updated_at
json.url user_url(user, format: :json)
