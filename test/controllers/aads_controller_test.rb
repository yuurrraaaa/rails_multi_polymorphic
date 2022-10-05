require "test_helper"

class AadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @aad = aads(:one)
  end

  test "should get index" do
    get aads_url
    assert_response :success
  end

  test "should get new" do
    get new_aad_url
    assert_response :success
  end

  test "should create aad" do
    assert_difference('Aad.count') do
      post aads_url, params: { aad: { test1: @aad.test1, test2: @aad.test2, test3: @aad.test3 } }
    end

    assert_redirected_to aad_url(Aad.last)
  end

  test "should show aad" do
    get aad_url(@aad)
    assert_response :success
  end

  test "should get edit" do
    get edit_aad_url(@aad)
    assert_response :success
  end

  test "should update aad" do
    patch aad_url(@aad), params: { aad: { test1: @aad.test1, test2: @aad.test2, test3: @aad.test3 } }
    assert_redirected_to aad_url(@aad)
  end

  test "should destroy aad" do
    assert_difference('Aad.count', -1) do
      delete aad_url(@aad)
    end

    assert_redirected_to aads_url
  end
end
