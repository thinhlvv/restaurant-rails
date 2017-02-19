require 'test_helper'

class MenusControllerTest < ActionDispatch::IntegrationTest
  test "should get section_id:integer" do
    get menus_section_id:integer_url
    assert_response :success
  end

  test "should get item_id:integer" do
    get menus_item_id:integer_url
    assert_response :success
  end

end
