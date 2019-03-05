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

  def update

    @comment= Comment.find(params[:id])
    @comment.content = params[:content]
    @comment.save
    render json: @comment
  end

  def destroy
    @comment= Comment.find(params[:id])
    @comment.destroy
    @comments = Item.find(params[:item_id]).comments
    render json: @comments
  end



  private

  def comment_params
    params.require(:comment).permit(:content, :item_id, :id);
  end
end
