require 'test_helper'

class TemperaturaControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get temperatura_index_url
    assert_response :success
  end

end
