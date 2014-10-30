class PlacesController < ActionController::Base
	# include UserHelper

	def show
		@place = Place.find(params[:id])
	end

	def create
		@place = Place.new(params_place)
		@place.user = current_user # UserHelper method
	end

	def edit
		# should only get called if JS is disabled
		@place = Place.find(params[:id])
		redirect_to edit_place_path(@place)
	end

	def index
	end

	def new
		@place = Place.new()
		render :"places/form"
	end

	def update
		@place = Place.find(params[:id])
		if request.xhr?
			# AJAX stuff
		else
			if @place.update_attributes(params_place)
				redirect_to place_path(@place)
			end
		end
	end

	private

	def params_place
		params.require(:place).permit(:category, :name, :address, :phone, :website, :description)
	end
end