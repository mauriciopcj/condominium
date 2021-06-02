require 'test_helper'

class SyndicsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @syndic = syndics(:one)
  end

  test "should get index" do
    get syndics_url
    assert_response :success
  end

  test "should get new" do
    get new_syndic_url
    assert_response :success
  end

  test "should create syndic" do
    assert_difference('Syndic.count') do
      post syndics_url, params: { syndic: { end: @syndic.end, start: @syndic.start, user_id: @syndic.user_id } }
    end

    assert_redirected_to syndic_url(Syndic.last)
  end

  test "should show syndic" do
    get syndic_url(@syndic)
    assert_response :success
  end

  test "should get edit" do
    get edit_syndic_url(@syndic)
    assert_response :success
  end

  test "should update syndic" do
    patch syndic_url(@syndic), params: { syndic: { end: @syndic.end, start: @syndic.start, user_id: @syndic.user_id } }
    assert_redirected_to syndic_url(@syndic)
  end

  test "should destroy syndic" do
    assert_difference('Syndic.count', -1) do
      delete syndic_url(@syndic)
    end

    assert_redirected_to syndics_url
  end
end
