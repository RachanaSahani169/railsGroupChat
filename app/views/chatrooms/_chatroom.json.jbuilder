json.extract! chatroom, :id, :name, :created_at, :updated_at
json.url chatroom_url(chatroom, format: :json)
skip_before_action :verify_authenticity_token
