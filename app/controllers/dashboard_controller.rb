class DashboardController < ApplicationController
  def home
  end
  
  def index
    @users = User.all
  end
  
  def destroy
    if super_admin_signed_in?
      binding.pry
      User.find_by(id: params[:id]).destroy
      respond_to do |format|
        format.html { redirect_to dashboard_index_url, notice: 'User was successfully destroyed.' }
        format.json { head :no_content }
      end
      index
    end
  end
end
