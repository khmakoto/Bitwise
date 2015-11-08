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
    @publication = Publication.new
    @type = params[:type]
    if @type == "article"
      render "new_article.html.erb"
    else
      render "new_review.html.erb"
    end
  end

  def create
    exit

  end
  private
    def publication_params
      params.require(:publication).permit(:title, :type, :section, :intro, :content, :summary, :grade)
    end

end