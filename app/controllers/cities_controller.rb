class CitiesController < ApplicationController

	def view
		@cities = City
	end

	def new
		#check if duplicate 
	end


	def create
		
		@checkold = $cities[params[:city_name].to_sym]
		if @checkold.nil?
			new_city_name = params[:city_name]
		    new_city_landmark = params[:landmark]
		    new_city_population = params[:population]
		    new_city = City.new(name: new_city_name,
			landmark: new_city_landmark, # Using the converted temperature
			population: new_city_population)
		    new_city.save
		end
		redirect_to action: 'view'
	end

	def update
	end

	def updatep
		@City = $cities[params[:city_name].to_sym]
		if not @City.nil?
			@City.update(landmark: params[:landmark], population: params[:population])
		end
		redirect_to action: 'view'
	end



  
end
