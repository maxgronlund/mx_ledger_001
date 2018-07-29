require 'test_helper'

class Api::V1::RetrieveTransactionRequestsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_v1_retrieve_transaction_requests_index_url
    assert_response :success
  end

end
