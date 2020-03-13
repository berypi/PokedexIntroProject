class EvolutionsController < ApplicationController
  before_action :set_evolution, only: [:show, :edit, :update, :destroy]

  # GET /evolutions
  # GET /evolutions.json
  def index
    @evolutions = Evolution.all
  end

  # GET /evolutions/1
  # GET /evolutions/1.json
  def show
  end

  # GET /evolutions/new
  def new
    @evolution = Evolution.new
  end

  # GET /evolutions/1/edit
  def edit
  end

  # POST /evolutions
  # POST /evolutions.json
  def create
    @evolution = Evolution.new(evolution_params)

    respond_to do |format|
      if @evolution.save
        format.html { redirect_to @evolution, notice: 'Evolution was successfully created.' }
        format.json { render :show, status: :created, location: @evolution }
      else
        format.html { render :new }
        format.json { render json: @evolution.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /evolutions/1
  # PATCH/PUT /evolutions/1.json
  def update
    respond_to do |format|
      if @evolution.update(evolution_params)
        format.html { redirect_to @evolution, notice: 'Evolution was successfully updated.' }
        format.json { render :show, status: :ok, location: @evolution }
      else
        format.html { render :edit }
        format.json { render json: @evolution.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /evolutions/1
  # DELETE /evolutions/1.json
  def destroy
    @evolution.destroy
    respond_to do |format|
      format.html { redirect_to evolutions_url, notice: 'Evolution was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_evolution
      @evolution = Evolution.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def evolution_params
      params.require(:evolution).permit(:evolution_name, :evolved_from)
    end
end
