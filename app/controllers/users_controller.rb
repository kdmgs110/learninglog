class UsersController < ApplicationController
  def show
    puts "@@@@@@@@@@@@@@@@@@@@@"
    @user = User.find(params[:id])
  end
end
