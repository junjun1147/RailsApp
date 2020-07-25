require 'test_helper'

class FootsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get foots_index_url
    assert_response :success
  end

end
