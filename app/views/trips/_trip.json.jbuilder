json.extract! trip, :id, :title, :description, :start_time, :end_time, :duration, :created_at, :updated_at
json.url trip_url(trip, format: :json)
