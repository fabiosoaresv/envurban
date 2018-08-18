require 'test_helper'

class InformativosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @informativo = informativos(:one)
  end

  test "should get index" do
    get informativos_url
    assert_response :success
  end

  test "should get new" do
    get new_informativo_url
    assert_response :success
  end

  test "should create informativo" do
    assert_difference('Informativo.count') do
      post informativos_url, params: { informativo: { email: @informativo.email } }
    end

    assert_redirected_to informativo_url(Informativo.last)
  end

  test "should show informativo" do
    get informativo_url(@informativo)
    assert_response :success
  end

  test "should get edit" do
    get edit_informativo_url(@informativo)
    assert_response :success
  end

  test "should update informativo" do
    patch informativo_url(@informativo), params: { informativo: { email: @informativo.email } }
    assert_redirected_to informativo_url(@informativo)
  end

  test "should destroy informativo" do
    assert_difference('Informativo.count', -1) do
      delete informativo_url(@informativo)
    end

    assert_redirected_to informativos_url
  end
end
