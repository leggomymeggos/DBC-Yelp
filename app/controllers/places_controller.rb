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
		@place = Place.find(params[:id])
		if request.xhr? # AJAX call
			#return some data to make a form
		else
			# display a normal form
			render :"places/form"
		end
	end

	def index
	end

	def new
		@place = Place.new()
		if request.xhr? # AJAX call
			#return some data to make a form
		else
			# display a normal form
			render :"places/form"
		end
	end

	def update
		@place = Place.new(params_place)
	end

	private

	def params_place
		params.require(:place).allow(:category, :name, :address, :phone, :website, :description)
	end
end