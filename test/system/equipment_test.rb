require "application_system_test_case"

class EquipmentTest < ApplicationSystemTestCase
  setup do
    @equipment = equipment(:one)
  end

  test "visiting the index" do
    visit equipment_url
    assert_selector "h1", text: "Equipment"
  end

  test "should create equipment" do
    visit equipment_url
    click_on "New equipment"

    fill_in "Equipment", with: @equipment.equipment_id
    fill_in "Equipment name", with: @equipment.equipment_name
    fill_in "In charge", with: @equipment.in_charge
    fill_in "Location", with: @equipment.location
    fill_in "No available", with: @equipment.no_available
    fill_in "No in use", with: @equipment.no_in_use
    click_on "Create Equipment"

    assert_text "Equipment was successfully created"
    click_on "Back"
  end

  test "should update Equipment" do
    visit equipment_url(@equipment)
    click_on "Edit this equipment", match: :first

    fill_in "Equipment", with: @equipment.equipment_id
    fill_in "Equipment name", with: @equipment.equipment_name
    fill_in "In charge", with: @equipment.in_charge
    fill_in "Location", with: @equipment.location
    fill_in "No available", with: @equipment.no_available
    fill_in "No in use", with: @equipment.no_in_use
    click_on "Update Equipment"

    assert_text "Equipment was successfully updated"
    click_on "Back"
  end

  test "should destroy Equipment" do
    visit equipment_url(@equipment)
    click_on "Destroy this equipment", match: :first

    assert_text "Equipment was successfully destroyed"
  end
end
