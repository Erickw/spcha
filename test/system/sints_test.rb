require "application_system_test_case"

class SintsTest < ApplicationSystemTestCase
  setup do
    @sint = sints(:one)
  end

  test "visiting the index" do
    visit sints_url
    assert_selector "h1", text: "Sints"
  end

  test "creating a Sint" do
    visit sints_url
    click_on "New Sint"

    fill_in "Descricao", with: @sint.descricao
    fill_in "Nome sintoma", with: @sint.nome_sintoma
    fill_in "User", with: @sint.user_id
    click_on "Create Sint"

    assert_text "Sint was successfully created"
    click_on "Back"
  end

  test "updating a Sint" do
    visit sints_url
    click_on "Edit", match: :first

    fill_in "Descricao", with: @sint.descricao
    fill_in "Nome sintoma", with: @sint.nome_sintoma
    fill_in "User", with: @sint.user_id
    click_on "Update Sint"

    assert_text "Sint was successfully updated"
    click_on "Back"
  end

  test "destroying a Sint" do
    visit sints_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sint was successfully destroyed"
  end
end
