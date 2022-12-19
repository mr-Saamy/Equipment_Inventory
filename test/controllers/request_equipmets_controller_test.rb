require "test_helper"

class RequestEquipmetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @request_equipmet = request_equipmets(:one)
  end

  test "should get index" do
    get request_equipmets_url
    assert_response :success
  end

  test "should get new" do
    get new_request_equipmet_url
    assert_response :success
  end

  test "should create request_equipmet" do
    assert_difference("RequestEquipmet.count") do
      post request_equipmets_url, params: { request_equipmet: { equipment: @request_equipmet.equipment, faculty_in_charge: @request_equipmet.faculty_in_charge, no_of_units: @request_equipmet.no_of_units, username: @request_equipmet.username } }
    end

    assert_redirected_to request_equipmet_url(RequestEquipmet.last)
  end

  test "should show request_equipmet" do
    get request_equipmet_url(@request_equipmet)
    assert_response :success
  end

  test "should get edit" do
    get edit_request_equipmet_url(@request_equipmet)
    assert_response :success
  end

  test "should update request_equipmet" do
    patch request_equipmet_url(@request_equipmet), params: { request_equipmet: { equipment: @request_equipmet.equipment, faculty_in_charge: @request_equipmet.faculty_in_charge, no_of_units: @request_equipmet.no_of_units, username: @request_equipmet.username } }
    assert_redirected_to request_equipmet_url(@request_equipmet)
  end

  test "should destroy request_equipmet" do
    assert_difference("RequestEquipmet.count", -1) do
      delete request_equipmet_url(@request_equipmet)
    end

    assert_redirected_to request_equipmets_url
  end
end
