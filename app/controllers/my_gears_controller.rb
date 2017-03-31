# frozen_string_literal: true

# :nodoc:
class MyGearsController < ProtectedController
  before_action :set_my_gear, only: [:show, :update, :destroy]

  # GET /my_gears
  def index
    @my_gears = current_user.my_gears.all

    render json: @my_gears
  end

  # Curently not being used
  # GET /my_gears/1
  # def show
  #   render json: @my_gear
  # end

  # POST /my_gears
  def create
    @my_gear = current_user.my_gears.build(my_gear_params)

    if @my_gear.save
      render json: @my_gear, status: :created
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

  # Use callbacks to share common setup or constraints between actions.
  def set_my_gear
    @my_gear = current_user.my_gears.find(params[:id])
  end
  private :set_my_gear

  # Only allow a trusted parameter "white list" through.
  def my_gear_params
    params.require(:my_gear).permit(:name, :quantity)
  end
  private :my_gear_params
end
