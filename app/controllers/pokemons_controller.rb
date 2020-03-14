class PokemonsController < ApplicationController
  # before_action :set_pokemon, only: [:show]

  # GET /pokemons
  # GET /pokemons.json
  def index
    @pokemons = Pokemon.all
  end

  # GET /pokemons/1
  # GET /pokemons/1.json
  def show
    @pokemon = Pokemon.find(params[:id])
  end

  # GET /search/?search_term=user+search+terms
  def search
    @pokemons = Pokemon.where("name LIKE ?", "%#{params[:search_term]}%")
  end
end
