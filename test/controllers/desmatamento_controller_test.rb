require 'test_helper'

class DesmatamentoControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get desmatamento_index_url
    assert_response :success
  end

end
