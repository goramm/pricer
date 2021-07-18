require "test_helper"

class TestControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get test_create_url
    assert_response :success
  end

  test "should get name" do
    get test_name_url
    assert_response :success
  end
end
