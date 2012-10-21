module ApplicationHelper

  def title
    base_title = "Swinburne on Rails"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end

end
