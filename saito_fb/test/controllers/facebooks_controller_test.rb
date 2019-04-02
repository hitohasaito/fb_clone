require 'test_helper'

class FacebooksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get facebooks_index_url
    assert_response :success
  end

end
