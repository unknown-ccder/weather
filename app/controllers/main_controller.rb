require_relative "../services/weather_service"

class MainController < ApplicationController

  def index
    # Uncomment and pass a parameter to the get function
    @w = WeatherService.get(params[:city])
    if @w
    # Bonus: Converting Kelvin to Fahrenheit
		@temperature = (9 / 5) * (@w[:temperature] - 273) + 32
    #Check if city already exist all not 
    @city = $cities[params[:city].to_sym]
    if @city.nil?
      @city = City.new(name: params[:city], population: nil , landmark: nil)
      @city.save
    end

	end
   # @name = params[:name]



   
  end

end
