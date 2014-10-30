class Map < ActiveRecord::Base
	has_many :places


	def searchify_string(input)
		@map = input.gsub(/ /, '%20') + 
	end

end