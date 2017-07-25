json.extract! email, :id, :user_id, :receiver, :subject, :body, :created_at, :updated_at
json.url email_url(email, format: :json)
