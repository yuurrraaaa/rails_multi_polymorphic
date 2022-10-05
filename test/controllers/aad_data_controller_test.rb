require "test_helper"

class AadDataControllerTest < ActionDispatch::IntegrationTest
  setup do
    @aad_datum = aad_data(:one)
  end

  test "should get index" do
    get aad_data_url
    assert_response :success
  end

  test "should get new" do
    get new_aad_datum_url
    assert_response :success
  end

  test "should create aad_datum" do
    assert_difference('AadDatum.count') do
      post aad_data_url, params: { aad_datum: { teast4: @aad_datum.teast4, test1: @aad_datum.test1, test2: @aad_datum.test2, test3: @aad_datum.test3 } }
    end

    assert_redirected_to aad_datum_url(AadDatum.last)
  end

  test "should show aad_datum" do
    get aad_datum_url(@aad_datum)
    assert_response :success
  end

  test "should get edit" do
    get edit_aad_datum_url(@aad_datum)
    assert_response :success
  end

  test "should update aad_datum" do
    patch aad_datum_url(@aad_datum), params: { aad_datum: { teast4: @aad_datum.teast4, test1: @aad_datum.test1, test2: @aad_datum.test2, test3: @aad_datum.test3 } }
    assert_redirected_to aad_datum_url(@aad_datum)
  end

  test "should destroy aad_datum" do
    assert_difference('AadDatum.count', -1) do
      delete aad_datum_url(@aad_datum)
    end

    assert_redirected_to aad_data_url
  end
end
