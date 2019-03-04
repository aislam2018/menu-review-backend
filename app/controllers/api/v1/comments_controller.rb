class Api::V1::CommentsController < ApplicationController
  def index

    @comments = Item.find(params[:item_id]).comments
    render json: @comments
  end



  def create
    @user = current_user
    commentObj = params.require(:comment).permit(:content, :item_id)
    commentObj[:user_id] = @user.id
    @comment = Comment.create(commentObj)
    render json: @comment
  end



  private

  def comment_params
    params.require(:comment).permit(:content, :item_id);
  end
end
