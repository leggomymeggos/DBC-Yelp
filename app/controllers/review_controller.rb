class ReviewController < ApplicationController
	def index
		@review = Review.new
	end
end