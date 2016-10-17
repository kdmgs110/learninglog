class UsersController < ApplicationController
  #before_action :set_dialogue
  
  def index
    @q = User.search(params[:q])
    @users = @q.result(distinct: true).order("Created_at DESC")
  end
  
  def show
    # ここはeager loading使う
    # @users = User.find(params[:id]).includes(:forms)
    @users = User.find(params[:id])
  end
  
  def create_table
    @users = User.find(params[:id])
    @user.create
    redirect_to root_path
  end
  
  def update
    @user = User.find(current_user)
    if @user.update(user_params)
      redirect_to @user
    else
      redirect_to @user
    end
  
  end
  
  def follow
    @user = User.find(params[:id])
    if current_user
      if current_user == @user
        flash[:error] = "You cannot follow yourself."
      else
        current_user.follow(@user)
        flash[:notice] = "You are now following #{@user.name}."
        redirect_to @user
      end
    else
      redirect_to root_path
    end
  end

  def unfollow
    @user = User.find(params[:id])
  
    if current_user
      current_user.stop_following(@user)
      flash[:notice] = "You are no longer following #{@user.name}."
      redirect_to @user
    else
      flash[:error] = "You must <a href='/users/sign_in'>login</a> to unfollow #{@user.name}.".html_safe
      redirect_to @user
    end
  end
  
  private
    
    def user_params
     params.require(:user).permit(:user_id, :name, :learning, :teachable, :profession, :intro)
    end
end
