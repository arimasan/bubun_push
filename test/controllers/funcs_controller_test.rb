require 'test_helper'

class FuncsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @func = funcs(:one)
  end

  test "should get index" do
    get funcs_url
    assert_response :success
  end

  test "should get new" do
    get new_func_url
    assert_response :success
  end

  test "should create func" do
    assert_difference('Func.count') do
      post funcs_url, params: { func: {  } }
    end

    assert_redirected_to func_url(Func.last)
  end

  test "should show func" do
    get func_url(@func)
    assert_response :success
  end

  test "should get edit" do
    get edit_func_url(@func)
    assert_response :success
  end

  test "should update func" do
    patch func_url(@func), params: { func: {  } }
    assert_redirected_to func_url(@func)
  end

  test "should destroy func" do
    assert_difference('Func.count', -1) do
      delete func_url(@func)
    end

    assert_redirected_to funcs_url
  end
end
