require "test_helper"

class VectorDataControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vector_datum = vector_data(:one)
  end

  test "should get index" do
    get vector_data_url
    assert_response :success
  end

  test "should get new" do
    get new_vector_datum_url
    assert_response :success
  end

  test "should create vector_datum" do
    assert_difference('VectorDatum.count') do
      post vector_data_url, params: { vector_datum: { data_id: @vector_datum.data_id, data_type: @vector_datum.data_type, research_id: @vector_datum.research_id } }
    end

    assert_redirected_to vector_datum_url(VectorDatum.last)
  end

  test "should show vector_datum" do
    get vector_datum_url(@vector_datum)
    assert_response :success
  end

  test "should get edit" do
    get edit_vector_datum_url(@vector_datum)
    assert_response :success
  end

  test "should update vector_datum" do
    patch vector_datum_url(@vector_datum), params: { vector_datum: { data_id: @vector_datum.data_id, data_type: @vector_datum.data_type, research_id: @vector_datum.research_id } }
    assert_redirected_to vector_datum_url(@vector_datum)
  end

  test "should destroy vector_datum" do
    assert_difference('VectorDatum.count', -1) do
      delete vector_datum_url(@vector_datum)
    end

    assert_redirected_to vector_data_url
  end
end
