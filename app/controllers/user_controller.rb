class UserController < ApplicationController
  def user_panel
    @user = User.all
  end
end
