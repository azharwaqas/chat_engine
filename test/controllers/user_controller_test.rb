require 'test_helper'

class UserControllerTest < ActionDispatch::IntegrationTest
  test "should get user_panel" do
    get user_user_panel_url
    assert_response :success
  end

end
