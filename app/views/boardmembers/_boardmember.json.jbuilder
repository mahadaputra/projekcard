json.extract! boardmember, :board_id, :user_id, :role, :created_at, :updated_at
json.url boardmember_url(boardmember, format: :json)
