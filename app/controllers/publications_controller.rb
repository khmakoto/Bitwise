class PublicationsController < ApplicationController
  before_filter :authenticate_user, :only => [:new, :create]

  def index
    type = params[:type]
    section = params[:section]
    @publications = Publication.where(type: type)
    if type == "article"
      @publications = @publications.where(section: section)
    end
  end

  def new
    if !@current_user
      redirect_to root_path
    end
    @publication = Publication.new
    @type = params[:type]
    if @type == "article"
      render "new_article.html.erb"
    else
      render "new_review.html.erb"
    end
  end

  def create
    if !@current_user || !@current_user.editor?
      redirect_to root_path
    end
    @publication = Publication.new(publication_params)
    @publication.user = @current_user
    if @publication.save
      flash[:success] = "Publication created succesfully"
    else
      flash[:error] = "Publication is invalid"
    end
    redirect_to root_path
  end
  private
    def publication_params
      params.require(:publication).permit(:title, :publication_type, :section, :intro, :content, :summary, :grade)
    end

end