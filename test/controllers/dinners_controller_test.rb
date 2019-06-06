require 'test_helper'

class DinnersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dinner = dinners(:one)
  end

  test "should get index" do
    get dinners_url
    assert_response :success
  end

  test "should get new" do
    get new_dinner_url
    assert_response :success
  end

  test "should create dinner" do
    assert_difference('Dinner.count') do
      post dinners_url, params: { dinner: { dinner_type: @dinner.dinner_type, name: @dinner.name } }
    end

    assert_redirected_to dinner_url(Dinner.last)
  end

  test "should show dinner" do
    get dinner_url(@dinner)
    assert_response :success
  end

  test "should get edit" do
    get edit_dinner_url(@dinner)
    assert_response :success
  end

  test "should update dinner" do
    patch dinner_url(@dinner), params: { dinner: { dinner_type: @dinner.dinner_type, name: @dinner.name } }
    assert_redirected_to dinner_url(@dinner)
  end

  test "should destroy dinner" do
    assert_difference('Dinner.count', -1) do
      delete dinner_url(@dinner)
    end

    assert_redirected_to dinners_url
  end
end
