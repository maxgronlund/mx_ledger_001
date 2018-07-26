require 'test_helper'

class Api::V1::PermissionsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get api_v1_permissions_show_url
    assert_response :success
  end

end
