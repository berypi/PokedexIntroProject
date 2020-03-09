json.extract! pokemon, :id, :pokemon_name, :description, :created_at, :updated_at
json.url pokemon_url(pokemon, format: :json)
