require 'test_helper'

class UtilitiesControllerTest < ActionDispatch::IntegrationTest
  test "should get stock" do
    get utilities_stock_url
    assert_response :success
  end

  test "should get weather" do
    get utilities_weather_url
    assert_response :success
  end

  test "should get lotto" do
    get utilities_lotto_url
    assert_response :success
  end

  test "should get index" do
    get utilities_index_url
    assert_response :success
  end

end
