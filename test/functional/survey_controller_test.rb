require 'test_helper'

class SurveyControllerTest < ActionController::TestCase
  test "should get create" do
    get :create
    assert_response :success
  end

  test "should get manage" do
    get :manage
    assert_response :success
  end

end
