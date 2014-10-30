class MapsController < ActionController::Base

	def show
		
	end

	def create
	end

	def edit
	end

	def index

		def searchify_string(input)
			@map = input.gsub(/ /, '%20') 
		end

		search_input="chipotle"

		searchify_string(search_input)


		# @map="Chipotle%20Mexican%20Grill%2C%20West%20Lake%20Street"
	end

	def script
		
	end

	def new
	end

	def update
	end
end