require 'test_helper'

class AlagamentosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get alagamentos_index_url
    assert_response :success
  end

end
