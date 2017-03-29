class PorjectsController < ApplicationController
  before_action :set_porject, only: [:show, :update, :destroy]

  # GET /porjects
  def index
    @porjects = Porject.all

    render json: @porjects
  end

  # GET /porjects/1
  def show
    render json: @porject
  end

  # POST /porjects
  def create
    @porject = Porject.new(porject_params)

    if @porject.save
      render json: @porject, status: :created, location: @porject
    else
      render json: @porject.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /porjects/1
  def update
    if @porject.update(porject_params)
      render json: @porject
    else
      render json: @porject.errors, status: :unprocessable_entity
    end
  end

  # DELETE /porjects/1
  def destroy
    @porject.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_porject
      @porject = Porject.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def porject_params
      params.require(:porject).permit(:comment)
    end
end
