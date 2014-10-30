class PlacesController < ActionController::Base

	def show
		@place = Place.find(params[:id])
	end

	def create
	end

	def edit
	end

	def index
	end

	def new
	end

	def update
	end
end