class PagesController < ApplicationController
  def home
  	@skills = Skill.all
  end

  def experience
  end

  def projects
  end

  def contact
  end
end
