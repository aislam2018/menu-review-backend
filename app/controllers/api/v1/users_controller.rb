
  class Api::V1::UsersController < ApplicationController

    def create
      @user = User.create(user_params)
      render json: @user
    end

    def update
      @user = User.find(params[:id])
      @user.save
      render json: @user
    end

    def destroy
      @user= User.find(params[:id])
      @user.destroy
    end

    private

    def user_params
      params.permit(:username, :password, :id);
    end

end
