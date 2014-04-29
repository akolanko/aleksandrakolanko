require 'test_helper'

class NavigationControllerTest < ActionController::TestCase
  test "should get clothing" do
    get :clothing
    assert_response :success
  end

  test "should get performances" do
    get :performances
    assert_response :success
  end

  test "should get installations" do
    get :installations
    assert_response :success
  end

  test "should get advertisements" do
    get :advertisements
    assert_response :success
  end

  test "should get sculpture" do
    get :sculpture
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

end
