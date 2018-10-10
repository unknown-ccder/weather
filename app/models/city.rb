# class City
# 	attr_accessor :name, :temperature, :description
# 	$cities = []


# 	def initialize(city_params)
# 		@name = city_params[:name]
# 		@temperature = city_params[:temperature]
# 		@description = city_params[:description]
# 	end

# 	def save
# 		$cities << self
# 	end

# 	def self.all
# 		$cities
# 	end
# end

class City
	attr_accessor :name, :landmark, :population, :weather
	$cities = {}
	
	def initialize(city_params)
		@name = city_params[:name]
		@landmark = city_params[:landmark]
		@population = city_params[:population]
		@weather = WeatherService.get(@name)
	end

	def save
		$cities[@name.to_sym] = self
	end

	def self.all
    $cities.values
    end

	def update(update_params)
		# Your code here, for Task 4
		# Use update_params (a hash) to update the model
		if update_params
			if update_params.key?(:landmark)
				self.landmark = update_params[:landmark]
			end
			if update_params.key?(:population)
				self.population = update_params[:population]
			end
		end
	end
end