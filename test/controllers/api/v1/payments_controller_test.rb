require 'test_helper'

class Api::V1::PaymentsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get api_v1_payments_new_url
    assert_response :success
  end

end
