require 'test_helper'

class ResponsesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get responses_index_url
    assert_response :success
  end

  test "should get create" do
    get responses_create_url
    assert_response :success
  end

end
