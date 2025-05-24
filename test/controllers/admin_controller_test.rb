require "test_helper"

class AdminControllerTest < ActionDispatch::IntegrationTest
  test "should get workflow" do
    get admin_workflow_url
    assert_response :success
  end
end
