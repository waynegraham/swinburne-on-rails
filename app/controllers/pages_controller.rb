class PagesController < ApplicationController
  def index
    @swinburne_edition = Edition.find_by_title('Poems and Ballads')
  end

  def about

  end
end
