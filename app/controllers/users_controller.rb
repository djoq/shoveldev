class UsersController < ApplicationController
  before_filter :authenticate_user!
  respond_to :html, :xml, :json

  def index
    @users = User.all.where("users.status" => "active")
    @hash = Gmaps4rails.build_markers(@users) do |user, marker|
      marker.lat user.latitude
      marker.lng user.longitude
      marker.title user.status
      user_link = view_context.link_to user.title, user_path(user)
      marker.infowindow "<h4><u>#{user_link}</u></h4><i>#{user.address}</i>"
    end
  end

end
