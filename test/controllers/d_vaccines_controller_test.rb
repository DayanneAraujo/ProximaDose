require 'test_helper'

class DVaccinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @d_vaccine = d_vaccines(:one)
  end

  test "should get index" do
    get d_vaccines_url
    assert_response :success
  end

  test "should get new" do
    get new_d_vaccine_url
    assert_response :success
  end

  test "should create d_vaccine" do
    assert_difference('DVaccine.count') do
      post d_vaccines_url, params: { d_vaccine: { date_taken: @d_vaccine.date_taken, retake: @d_vaccine.retake, vaccine: @d_vaccine.vaccine } }
    end

    assert_redirected_to d_vaccine_url(DVaccine.last)
  end

  test "should show d_vaccine" do
    get d_vaccine_url(@d_vaccine)
    assert_response :success
  end

  test "should get edit" do
    get edit_d_vaccine_url(@d_vaccine)
    assert_response :success
  end

  test "should update d_vaccine" do
    patch d_vaccine_url(@d_vaccine), params: { d_vaccine: { date_taken: @d_vaccine.date_taken, retake: @d_vaccine.retake, vaccine: @d_vaccine.vaccine } }
    assert_redirected_to d_vaccine_url(@d_vaccine)
  end

  test "should destroy d_vaccine" do
    assert_difference('DVaccine.count', -1) do
      delete d_vaccine_url(@d_vaccine)
    end

    assert_redirected_to d_vaccines_url
  end
end
