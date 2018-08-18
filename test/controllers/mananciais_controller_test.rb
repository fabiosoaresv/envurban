require 'test_helper'

class MananciaisControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get mananciais_index_url
    assert_response :success
  end

end
