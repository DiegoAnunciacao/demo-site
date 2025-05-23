require "test_helper"

class ProductsControllerTest < ActionDispatch::IntegrationTest
  test "should get title" do
    get products_title_url
    assert_response :success
  end

  test "should get description" do
    get products_description_url
    assert_response :success
  end

  test "should get price:decimal10" do
    get products_price:decimal10_url
    assert_response :success
  end

  test "should get price:decimal2" do
    get products_price:decimal2_url
    assert_response :success
  end
end
