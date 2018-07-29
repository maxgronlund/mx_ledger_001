require 'test_helper'

class Api::V1::TransactionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get api_v1_transactions_new_url
    assert_response :success
  end

  test "should get show" do
    get api_v1_transactions_show_url
    assert_response :success
  end

  test "should get index" do
    get api_v1_transactions_index_url
    assert_response :success
  end

end
