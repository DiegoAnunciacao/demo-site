require "test_helper"

class Admin::AdminControllerTest < ActionDispatch::IntegrationTest
  test "should get workflow" do
    get admin_admin_workflow_url
    assert_response :success
  end
end
