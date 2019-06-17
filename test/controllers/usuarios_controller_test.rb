require 'test_helper'

class UsuariosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @usuario = usuarios(:one)
  end

  test "should get index" do
    get usuarios_url
    assert_response :success
  end

  test "should get new" do
    get new_usuario_url
    assert_response :success
  end

  test "should create usuario" do
    assert_difference('Usuario.count') do
      post usuarios_url, params: { usuario: { altura: @usuario.altura, exercicios: @usuario.exercicios, id: @usuario.id, imc: @usuario.imc, medicamento: @usuario.medicamento, nome: @usuario.nome, peso: @usuario.peso, pressao_media: @usuario.pressao_media, problemas_extras: @usuario.problemas_extras, senha: @usuario.senha } }
    end

    assert_redirected_to usuario_url(Usuario.last)
  end

  test "should show usuario" do
    get usuario_url(@usuario)
    assert_response :success
  end

  test "should get edit" do
    get edit_usuario_url(@usuario)
    assert_response :success
  end

  test "should update usuario" do
    patch usuario_url(@usuario), params: { usuario: { altura: @usuario.altura, exercicios: @usuario.exercicios, id: @usuario.id, imc: @usuario.imc, medicamento: @usuario.medicamento, nome: @usuario.nome, peso: @usuario.peso, pressao_media: @usuario.pressao_media, problemas_extras: @usuario.problemas_extras, senha: @usuario.senha } }
    assert_redirected_to usuario_url(@usuario)
  end

  test "should destroy usuario" do
    assert_difference('Usuario.count', -1) do
      delete usuario_url(@usuario)
    end

    assert_redirected_to usuarios_url
  end
end
