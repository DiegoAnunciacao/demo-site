require "test_helper"

class CarterPhotographyControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get carter_photography_home_url
    assert_response :success
  end
end
