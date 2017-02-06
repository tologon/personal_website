require 'test_helper'

class AdminControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get admin_main_url
    assert_redirected_to controller: 'users/sessions', action: 'new'
  end

end
