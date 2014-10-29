class Review < ActiveRecord::Base
	belongs_to :user
	belongs_to :place
	has_many :votes, as: :voteable
end
