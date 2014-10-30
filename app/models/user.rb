class User < ActiveRecord::Base
	has_many :places
	has_many :votes
	has_many :reviews
end
