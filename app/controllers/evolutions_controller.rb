class EvolutionsController < ApplicationController
  # before_action :set_evolution, only: [:show]

  # GET /evolutions
  # GET /evolutions.json
  def index
    @evolutions = Evolution.all
  end

  # GET /evolutions/1
  # GET /evolutions/1.json
  def show
    @evolution = Evolution.find(params[:id])
  end
end
