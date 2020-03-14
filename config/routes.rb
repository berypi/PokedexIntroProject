Rails.application.routes.draw do
  resources :evolutions
  resources :trainers
  resources :types
  resources :pokemons
  resources :pokedexes

  root to: "pokedexes#index"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
