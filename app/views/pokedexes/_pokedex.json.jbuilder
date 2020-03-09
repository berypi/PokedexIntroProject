json.extract! pokedex, :id, :pokemon_name, :created_at, :updated_at
json.url pokedex_url(pokedex, format: :json)
