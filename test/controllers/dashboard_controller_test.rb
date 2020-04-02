require 'test_helper'

class DashboardControllerTest < ActionDispatch::IntegrationTest
  test "should get uploaded_products" do
    get dashboard_uploaded_products_url
    assert_response :success
  end

  test "should get my_products" do
    get dashboard_my_products_url
    assert_response :success
  end

end
