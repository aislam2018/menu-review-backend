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
    @user = current_user
    @comment= Comment.find(params[:id])

    if @user.id == @comment.user_id
      @comment.content = params[:content]
      @comment.save
      render json: @comment
    else
      render json: @comment
    end
  end

  def destroy
    @user = current_user
    @comment= Comment.find(params[:id])

    if @user.id == @comment.user_id
      @comment.destroy
      @comments = Item.find(params[:item_id]).comments
      render json: @comments
    else
      render json: @comment
    end
  end



  private

  def comment_params
    params.require(:comment).permit(:content, :item_id, :id);
  end
end
