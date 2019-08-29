json.extract! card, :id, :title, :content, :tipe, :user_id, :board_id, :status, :created_at, :updated_at
json.url card_url(card, format: :json)
