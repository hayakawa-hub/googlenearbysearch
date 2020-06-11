require 'test_helper'

class FactorsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get factors_new_url
    assert_response :success
  end

  test "should get show" do
    get factors_show_url
    assert_response :success
  end

end
