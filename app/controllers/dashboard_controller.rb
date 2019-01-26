class DashboardController < ApplicationController
  def home
  end
  
  def index
    @user = User.all
  end
  
  def destroy
    User.find_by(id: params[:id]).destroy
    respond_to do |format|
      format.html { redirect_to dashboard_index_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
    index
  end
end
