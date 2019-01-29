class UserController < ApplicationController
  def user_panel
    @users = User.all
  end
end
