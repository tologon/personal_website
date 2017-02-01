require 'test_helper'

Settings.reload_from_files(
  Rails.root.join('config', 'settings.yml').to_s
)

class PagesControllerTest < ActionDispatch::IntegrationTest

  def setup
    @name = "Tologon Eshimkanov"
  end

  test "should get home" do
    get pages_home_url
    assert_response :success
    assert_select 'title', "Home | #{@name}"
    assert_select 'a.page-scroll', 'Projects'
    assert_select 'a.page-scroll', 'Contact'
  end

end
