class Opening < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :running_title, :verso, :recto, :verso_page_number, :recto_page_number, :verso_notes, :recto_notes
end
