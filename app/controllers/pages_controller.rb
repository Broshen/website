class PagesController < ApplicationController
  def home
  	@skills = Skill.all
  	@experiences = Experience.all
  	@projects = Project.all
    @message = Message.new
  end
end
