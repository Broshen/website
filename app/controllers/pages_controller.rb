class PagesController < ApplicationController
  def home
  	@skills = Skill.all
  	@experiences = Experience.all
  	@projects = Project.all
  end

  def contact
  end
end
