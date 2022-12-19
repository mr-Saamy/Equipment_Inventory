require "test_helper"

class FacultiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @faculty = faculties(:one)
  end

  test "should get index" do
    get faculties_url
    assert_response :success
  end

  test "should get new" do
    get new_faculty_url
    assert_response :success
  end

  test "should create faculty" do
    assert_difference("Faculty.count") do
      post faculties_url, params: { faculty: { faculty_id: @faculty.faculty_id, faculty_name: @faculty.faculty_name, funding_organization: @faculty.funding_organization, project_description: @faculty.project_description } }
    end

    assert_redirected_to faculty_url(Faculty.last)
  end

  test "should show faculty" do
    get faculty_url(@faculty)
    assert_response :success
  end

  test "should get edit" do
    get edit_faculty_url(@faculty)
    assert_response :success
  end

  test "should update faculty" do
    patch faculty_url(@faculty), params: { faculty: { faculty_id: @faculty.faculty_id, faculty_name: @faculty.faculty_name, funding_organization: @faculty.funding_organization, project_description: @faculty.project_description } }
    assert_redirected_to faculty_url(@faculty)
  end

  test "should destroy faculty" do
    assert_difference("Faculty.count", -1) do
      delete faculty_url(@faculty)
    end

    assert_redirected_to faculties_url
  end
end
