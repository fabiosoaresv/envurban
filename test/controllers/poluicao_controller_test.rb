require 'test_helper'

class PoluicaoControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get poluicao_index_url
    assert_response :success
  end

end
