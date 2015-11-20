class UsersController < ApplicationController
  before_filter :authenticate_user, :only => [:edit]
  before_filter :save_login_state, :only => [:new, :create]

  def new
    @user = User.new 
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "You signed up successfully"
      flash[:color]= "valid"
      session[:user_id] = @user.id
      redirect_to root_path
    else
      flash[:notice] = "Form is invalid"
      flash[:color]= "invalid"
      render "new"
    end
  end

  def edit
    if !@current_user || @current_user.id.to_s != params[:id]
      redirect_to root_path
    end
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    if @user.update(user_params)
      flash[:success] = "Information updated successfully"
      flash[:color]= "valid"
      redirect_to root_path
    else
      render 'edit'
      @user = User.find(params[:id])
    end
  end

  private
    def user_params
      params.require(:user).permit(:username, :email, :password, :password_confirmation, :tech_preference, :gadget_preference, :gaming_preference, :editor)
    end

end