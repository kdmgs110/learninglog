class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @forms = Form.all
  end
end
