require "test_helper"

class TestControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get test_index_url
    assert_response :success
  end

  test "should get route" do
    get test_route_url
    assert_response :success
  end

  test "should get user" do
    get test_user_url
    assert_response :success
  end
end
