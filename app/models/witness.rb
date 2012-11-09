class Witness < ActiveRecord::Base
  attr_accessible :author, :pub_place, :publisher, :title, :year, :code, :note

  has_many :openings
  has_many :editions
end
