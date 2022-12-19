require "application_system_test_case"

class RequestEquipmetsTest < ApplicationSystemTestCase
  setup do
    @request_equipmet = request_equipmets(:one)
  end

  test "visiting the index" do
    visit request_equipmets_url
    assert_selector "h1", text: "Request equipmets"
  end

  test "should create request equipmet" do
    visit request_equipmets_url
    click_on "New request equipmet"

    fill_in "Equipment", with: @request_equipmet.equipment
    fill_in "Faculty in charge", with: @request_equipmet.faculty_in_charge
    fill_in "No of units", with: @request_equipmet.no_of_units
    fill_in "Username", with: @request_equipmet.username
    click_on "Create Request equipmet"

    assert_text "Request equipmet was successfully created"
    click_on "Back"
  end

  test "should update Request equipmet" do
    visit request_equipmet_url(@request_equipmet)
    click_on "Edit this request equipmet", match: :first

    fill_in "Equipment", with: @request_equipmet.equipment
    fill_in "Faculty in charge", with: @request_equipmet.faculty_in_charge
    fill_in "No of units", with: @request_equipmet.no_of_units
    fill_in "Username", with: @request_equipmet.username
    click_on "Update Request equipmet"

    assert_text "Request equipmet was successfully updated"
    click_on "Back"
  end

  test "should destroy Request equipmet" do
    visit request_equipmet_url(@request_equipmet)
    click_on "Destroy this request equipmet", match: :first

    assert_text "Request equipmet was successfully destroyed"
  end
end
