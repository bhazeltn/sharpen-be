require 'test_helper'

class SharpeningsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sharpening = sharpenings(:one)
  end

  test "should get index" do
    get sharpenings_url, as: :json
    assert_response :success
  end

  test "should create sharpening" do
    assert_difference('Sharpening.count') do
      post sharpenings_url, params: { sharpening: { date: @sharpening.date, skater_id: @sharpening.skater_id } }, as: :json
    end

    assert_response 201
  end

  test "should show sharpening" do
    get sharpening_url(@sharpening), as: :json
    assert_response :success
  end

  test "should update sharpening" do
    patch sharpening_url(@sharpening), params: { sharpening: { date: @sharpening.date, skater_id: @sharpening.skater_id } }, as: :json
    assert_response 200
  end

  test "should destroy sharpening" do
    assert_difference('Sharpening.count', -1) do
      delete sharpening_url(@sharpening), as: :json
    end

    assert_response 204
  end
end
