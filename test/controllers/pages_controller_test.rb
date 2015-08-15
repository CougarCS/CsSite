require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get career" do
    get :career
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get members" do
    get :members
    assert_response :success
  end

  test "should get tutoring" do
    get :tutoring
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

end
