class PagesController < ApplicationController
  def home
  	@skills = Skill.all
  	@experiences = Experience.all
  end

  def contact
  end
end
