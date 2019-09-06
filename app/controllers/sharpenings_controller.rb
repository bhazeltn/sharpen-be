class SharpeningsController < ApplicationController
  before_action :set_sharpening, only: [:show, :update, :destroy]

  # GET /sharpenings
  def index
    @sharpenings = Sharpening.all

    render json: @sharpenings
  end

  # GET /sharpenings/1
  def show
    render json: @sharpening
  end

  # POST /sharpenings
  def create
    @sharpening = Sharpening.new(sharpening_params)

    if @sharpening.save
      render json: @sharpening, status: :created, location: @sharpening
    else
      render json: @sharpening.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /sharpenings/1
  def update
    if @sharpening.update(sharpening_params)
      render json: @sharpening
    else
      render json: @sharpening.errors, status: :unprocessable_entity
    end
  end

  # DELETE /sharpenings/1
  def destroy
    @sharpening.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sharpening
      @sharpening = Sharpening.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def sharpening_params
      params.require(:sharpening).permit(:skater_id, :date)
    end
end
