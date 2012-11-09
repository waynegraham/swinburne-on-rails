class Edition < ActiveRecord::Base
  attr_accessible :author, :title, :witness_id

  belongs_to :witness
end
