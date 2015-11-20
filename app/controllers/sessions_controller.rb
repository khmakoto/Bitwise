class SessionsController < ApplicationController
  before_filter :authenticate_user
  before_filter :save_login_state, :only => [:login, :login_attempt]

  def login
  end

  def login_attempt
    authorized_user = User.authenticate(params[:username_or_email],params[:login_password])
    if authorized_user
      session[:user_id] = authorized_user.id
      flash[:success] = "Welcome again, you logged in as #{authorized_user.username}"
      redirect_to root_path
    else
      flash[:error] = "Invalid Username or Password"
      render "login"  
    end
  end

  def logout
    session[:user_id] = nil
    flash[:success] = "Logged out"
    redirect_to root_path
  end
  
  def home
    @latest_publications = Publication.all.where(publication_type: "article").order("id desc").limit(5)
    if @current_user
      tech = Publication.where(section: "Tech News").order("id desc").limit(5).to_a
      gadget = Publication.where(section: "Gadgets").order("id desc").limit(5).to_a
      gaming = Publication.where(section: "Gaming").order("id desc").limit(5).to_a
       @featured_publications = []
      if (!@current_user.tech_preference) && (!@current_user.gadget_preference) && (!@current_user.gaming_preference)
        @featured_publications = tech + gadget + gaming
      else
        if @current_user.tech_preference
          @featured_publications += tech
        end
        if @current_user.gadget_preference
          @featured_publications += gadget
        end
        if @current_user.gaming_preference
          @featured_publications += gaming
        end
      end
      @featured_publications = @featured_publications.sort_by { |f| -f[:id] }
      @featured_publications = @featured_publications.take(5)
    end
    range = Time.now.beginning_of_month..Time.now.end_of_month
    @top_reviews = Publication.all.where(publication_type: "review", updated_at: range).order("grade desc").limit(10).to_a
    @first_review = @top_reviews.shift
    @place = 1
    @slider_publications = Publication.all.order("created_at DESC").limit(4)
  end
  
  def contact_us
  end
  
  def about_us
  end

end