json.extract! event, :id, :title, :description, :featured, :image, :place, :category, :dates, :created_at, :updated_at
json.url event_url(event, format: :json)
