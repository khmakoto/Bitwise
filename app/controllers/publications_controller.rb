class PublicationsController < ApplicationController
  before_filter :authenticate_user

  def index
    if params[:search]
      @publications = Publication.search(params[:search]).order("created_at DESC")
      @section = "Displaying Results"
    else
      type = params[:type]
      @section = params[:section]
      @publications = Publication.where(publication_type: type)
      if type == "article"
        @publications = @publications.where(section: @section)
      else
        @section = "Reviews"
      end
    end
  end

  def new
    if !@current_user || !@current_user.editor?
      redirect_to root_path
    end
    @publication = Publication.new
    $type = params[:type]
    if $type == "article"
      render "new_article.html.erb", :params => { :type => @type }
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
    @publication.publication_type = $type
    if @publication.save
      redirect_to root_path
    else
      if $type == "article"
        render "new_article.html.erb"
      else
        render "new_review.html.erb"
      end
    end
  end

  def show
    @publication = Publication.find(params[:id])
    if @current_user
      reading_publication = @current_user.reading_publications.where(id: @publication.id)
      if reading_publication.length > 0
        @favorite = true
      else
        @favorite = false
      end
    end
  end

  def add
    if !@current_user
      redirect_to root_path
    else
      publication = Publication.find(params['publication_id'].to_i)
      reading_publication = @current_user.reading_publications.where(id: params['publication_id'].to_i)
      if reading_publication.length == 0
        @current_user.reading_publications << publication
      end
      redirect_to publication_path(publication)
    end
  end

  def remove
    if !@current_user
      redirect_to root_path
    else
      publication = Publication.find(params['publication_id'].to_i)
      reading_publication = @current_user.reading_publications.where(id: params['publication_id'].to_i)
      if reading_publication.length != 0
        @current_user.reading_publications.delete(publication)
      end
      redirect_to publication_path(publication)
    end
  end

  def reading_list
    if !@current_user
      redirect_to root_path
    else
      @reading_publications = @current_user.reading_publications
    end
  end
  private
    def publication_params
      params.require(:publication).permit(:title, :publication_type, :section, :intro, :content, :summary, :grade, :img_string)
    end

end