class MyGearsController < ApplicationController
  before_action :set_my_gear, only: [:show, :update, :destroy]

  # GET /my_gears
  def index
    @my_gears = MyGear.all

    render json: @my_gears
  end

  # GET /my_gears/1
  def show
    render json: @my_gear
  end

  # POST /my_gears
  def create
    @my_gear = MyGear.new(my_gear_params)

    if @my_gear.save
      render json: @my_gear, status: :created, location: @my_gear
    else
      render json: @my_gear.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /my_gears/1
  def update
    if @my_gear.update(my_gear_params)
      render json: @my_gear
    else
      render json: @my_gear.errors, status: :unprocessable_entity
    end
  end

  # DELETE /my_gears/1
  def destroy
    @my_gear.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_my_gear
      @my_gear = MyGear.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def my_gear_params
      params.require(:my_gear).permit(:name, :quantity)
    end
end
