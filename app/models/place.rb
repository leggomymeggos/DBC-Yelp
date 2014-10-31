class Place < ActiveRecord::Base
  belongs_to :category
  has_many :votes, as: :voteable

  validates :address, presence: true

  def score
    place_score = 0
    self.votes.each do | vote |
      if vote.upvote?
        place_score += 1
      else
        place_score -= 1
      end
    end
    place_score
  end
end
