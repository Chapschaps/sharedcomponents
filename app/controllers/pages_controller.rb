class PagesController < ApplicationController
  def home
    @projects = Project.all.order('priority desc')
  end

  def components
    @projects = Project.all.order('priority desc')
  end
end
