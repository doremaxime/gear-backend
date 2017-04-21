# frozen_string_literal: true

require 'open-uri'
require 'json'
class SearchController < OpenReadController
  before_action :set_example, only: [:update, :destroy]

  def weather_search
    query = params[:search][:query]
    api_key = Rails.application.secrets.weather_key
    url = "http://api.openweathermap.org/data/2.5/weather?q=#{query}&units=Imperial&appid=#{api_key}"
    response = open(url)
    data_string = response.read
    json_string = JSON.parse(data_string)
    render json: json_string
  end

  # GET /examples
  # GET /examples.json
  def index
    @examples = Example.all

    render json: @examples
  end

  # GET /examples/1
  # GET /examples/1.json
  def show
    render json: Example.find(params[:id])
  end

  # POST /examples
  # POST /examples.json
  def create
    @example = current_user.examples.build(example_params)

    if @example.save
      render json: @example, status: :created
    else
      render json: @example.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /examples/1
  # PATCH/PUT /examples/1.json
  def update
    if @example.update(example_params)
      head :no_content
    else
      render json: @example.errors, status: :unprocessable_entity
    end
  end

  # DELETE /examples/1
  # DELETE /examples/1.json
  def destroy
    @example.destroy

    head :no_content
  end

  def set_example
    @example = current_user.examples.find(params[:id])
  end

  def example_params
    params.require(:query).permit(:query)
  end

  private :set_example, :example_params
end
