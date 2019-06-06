require 'test_helper'

class LunchesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lunch = lunches(:one)
  end

  test "should get index" do
    get lunches_url
    assert_response :success
  end

  test "should get new" do
    get new_lunch_url
    assert_response :success
  end

  test "should create lunch" do
    assert_difference('Lunch.count') do
      post lunches_url, params: { lunch: { lunch_type: @lunch.lunch_type, name: @lunch.name } }
    end

    assert_redirected_to lunch_url(Lunch.last)
  end

  test "should show lunch" do
    get lunch_url(@lunch)
    assert_response :success
  end

  test "should get edit" do
    get edit_lunch_url(@lunch)
    assert_response :success
  end

  test "should update lunch" do
    patch lunch_url(@lunch), params: { lunch: { lunch_type: @lunch.lunch_type, name: @lunch.name } }
    assert_redirected_to lunch_url(@lunch)
  end

  test "should destroy lunch" do
    assert_difference('Lunch.count', -1) do
      delete lunch_url(@lunch)
    end

    assert_redirected_to lunches_url
  end
end
