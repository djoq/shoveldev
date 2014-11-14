class UsersController < ApplicationController
  before_filter :authenticate_user!
  respond_to :html, :xml, :json

  def index
    @users = User.active
    @hash = Gmaps4rails.build_markers(@users) do |user, marker|
      marker.lat user.latitude
      marker.lng user.longitude
      marker.title user.title
      user_link = view_context.link_to user.title, user_path(user)
      marker.infowindow "<h4><u>#{user_link}</u></h4><i>#{user.address}</i>"
    end
  end

  def show
    @user = User.find(params[:id])
  end
  
  def user_params
    params.require(:user).permit(:id, :email, :password, :password_confirmation, :latitude, :longitude, :address, :status, :title)
  end

end
