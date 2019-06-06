require 'test_helper'

class CakesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cake = cakes(:one)
  end

  test "should get index" do
    get cakes_url
    assert_response :success
  end

  test "should get new" do
    get new_cake_url
    assert_response :success
  end

  test "should create cake" do
    assert_difference('Cake.count') do
      post cakes_url, params: { cake: { cake_type: @cake.cake_type, name: @cake.name } }
    end

    assert_redirected_to cake_url(Cake.last)
  end

  test "should show cake" do
    get cake_url(@cake)
    assert_response :success
  end

  test "should get edit" do
    get edit_cake_url(@cake)
    assert_response :success
  end

  test "should update cake" do
    patch cake_url(@cake), params: { cake: { cake_type: @cake.cake_type, name: @cake.name } }
    assert_redirected_to cake_url(@cake)
  end

  test "should destroy cake" do
    assert_difference('Cake.count', -1) do
      delete cake_url(@cake)
    end

    assert_redirected_to cakes_url
  end
end
