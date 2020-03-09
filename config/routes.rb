Rails.application.routes.draw do
  resources :trainers
  resources :types
  resources :pokemons
  resources :pokedexes
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
