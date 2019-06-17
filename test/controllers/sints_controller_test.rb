require 'test_helper'

class SintsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sint = sints(:one)
  end

  test "should get index" do
    get sints_url
    assert_response :success
  end

  test "should get new" do
    get new_sint_url
    assert_response :success
  end

  test "should create sint" do
    assert_difference('Sint.count') do
      post sints_url, params: { sint: { descricao: @sint.descricao, nome_sintoma: @sint.nome_sintoma, user_id: @sint.user_id } }
    end

    assert_redirected_to sint_url(Sint.last)
  end

  test "should show sint" do
    get sint_url(@sint)
    assert_response :success
  end

  test "should get edit" do
    get edit_sint_url(@sint)
    assert_response :success
  end

  test "should update sint" do
    patch sint_url(@sint), params: { sint: { descricao: @sint.descricao, nome_sintoma: @sint.nome_sintoma, user_id: @sint.user_id } }
    assert_redirected_to sint_url(@sint)
  end

  test "should destroy sint" do
    assert_difference('Sint.count', -1) do
      delete sint_url(@sint)
    end

    assert_redirected_to sints_url
  end
end
