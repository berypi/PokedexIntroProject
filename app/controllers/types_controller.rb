class TypesController < ApplicationController
  # before_action :set_type, only: [:show]

  # GET /types
  # GET /types.json
  def index
    @types = Type.all
  end

  # GET /types/1
  # GET /types/1.json
  def show
    @type = Type.find(params[:id])
  end
end
