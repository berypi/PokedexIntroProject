class PokedexesController < ApplicationController
  # before_action :set_pokedex, only: [:show]

  # GET /pokedexes
  # GET /pokedexes.json
  def index
    @pokedexes = Pokedex.all
  end

  # GET /pokedexes/1
  # GET /pokedexes/1.json
  def show
    @pokedex = Pokedex.find(params[:id])
  end
end
