class TrainersController < ApplicationController
  # before_action :set_trainer, only: [:show]

  # GET /trainers
  # GET /trainers.json
  def index
    @trainers = Trainer.all
  end

  # GET /trainers/1
  # GET /trainers/1.json
  def show
    @trainer = Trainer.find(params[:id])
  end
end
