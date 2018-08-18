require 'test_helper'

class TransitoControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get transito_index_url
    assert_response :success
  end

end
