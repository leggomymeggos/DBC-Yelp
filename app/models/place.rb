class Place < ActiveRecord::Base

  #### attributes ####
  #  t.belongs_to :user
  #  t.belongs_to :category
  #  t.string :name
  #  t.string :address
  #  t.string :phone
  #  t.string :website
  #  t.text :description

  belongs_to :user
  belongs_to :category
  has_many :votes
  has_many :photos
  has_many :reviews


end
