require 'test_helper'

class CalculationControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get calculation_index_url
    assert_response :success
  end

end
