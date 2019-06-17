require "application_system_test_case"

class SintomasTest < ApplicationSystemTestCase
  setup do
    @sintoma = sintomas(:one)
  end

  test "visiting the index" do
    visit sintomas_url
    assert_selector "h1", text: "Sintomas"
  end

  test "creating a Sintoma" do
    visit sintomas_url
    click_on "New Sintoma"

    fill_in "Descricao", with: @sintoma.descricao
    fill_in "Nome sintoma", with: @sintoma.nome_sintoma
    click_on "Create Sintoma"

    assert_text "Sintoma was successfully created"
    click_on "Back"
  end

  test "updating a Sintoma" do
    visit sintomas_url
    click_on "Edit", match: :first

    fill_in "Descricao", with: @sintoma.descricao
    fill_in "Nome sintoma", with: @sintoma.nome_sintoma
    click_on "Update Sintoma"

    assert_text "Sintoma was successfully updated"
    click_on "Back"
  end

  test "destroying a Sintoma" do
    visit sintomas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sintoma was successfully destroyed"
  end
end
