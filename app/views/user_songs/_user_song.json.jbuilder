json.extract! user_song, :id, :created_at, :updated_at
json.url user_song_url(user_song, format: :json)