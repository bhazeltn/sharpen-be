require 'test_helper'

class SkatersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @skater = skaters(:one)
  end

  test "should get index" do
    get skaters_url, as: :json
    assert_response :success
  end

  test "should create skater" do
    assert_difference('Skater.count') do
      post skaters_url, params: { skater: { email: @skater.email, first_name: @skater.first_name, hollow: @skater.hollow, interval: @skater.interval, last_name: @skater.last_name, string: @skater.string } }, as: :json
    end

    assert_response 201
  end

  test "should show skater" do
    get skater_url(@skater), as: :json
    assert_response :success
  end

  test "should update skater" do
    patch skater_url(@skater), params: { skater: { email: @skater.email, first_name: @skater.first_name, hollow: @skater.hollow, interval: @skater.interval, last_name: @skater.last_name, string: @skater.string } }, as: :json
    assert_response 200
  end

  test "should destroy skater" do
    assert_difference('Skater.count', -1) do
      delete skater_url(@skater), as: :json
    end

    assert_response 204
  end
end
