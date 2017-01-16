require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @name = "Tologon Eshimkanov"
  end

  test "should get home" do
    get pages_home_url
    assert_response :success
    assert_select 'title', @name
  end

end
