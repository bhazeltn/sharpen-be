class SkatersController < ApplicationController
  before_action :set_skater, only: [:show, :update, :destroy]

  # GET /skaters
  def index
    @skaters = Skater.all

    render json: @skaters
  end

  # GET /skaters/1
  def show
    render json: @skater
  end

  # POST /skaters
  def create
    @skater = Skater.new(skater_params)

    if @skater.save
      render json: @skater, status: :created, location: @skater
    else
      render json: @skater.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /skaters/1
  def update
    if @skater.update(skater_params)
      render json: @skater
    else
      render json: @skater.errors, status: :unprocessable_entity
    end
  end

  # DELETE /skaters/1
  def destroy
    @skater.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_skater
      @skater = Skater.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def skater_params
      params.require(:skater).permit(:first_name, :last_name, :email, :hollow, :interval)
    end
end
