class PublicationsController < ApplicationController

  def index
    type = params[:type]
    section = params[:section]
    @publications = Publication.where(type: type)
    if type == "article"
      @publications = @publications.where(section: section)
    end
  end

  def new
  end

  def create
  end

end