class CommentsController < ApplicationController
  before_filter :authenticate_user
  def create
    if !@current_user
      redirect_to root_path
    else
      comment = Comment.create(comment_params)
      redirect_to publication_path(comment.publication)
    end
  end
  private
    def comment_params
      params.require(:comment).permit(:user_id, :publication_id, :text)
    end
end