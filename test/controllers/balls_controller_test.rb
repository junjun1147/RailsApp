require 'test_helper'

class BallsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get balls_index_url
    assert_response :success
  end

end
