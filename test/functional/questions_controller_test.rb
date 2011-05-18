require 'test_helper'

class QuestionsControllerTest < ActionController::TestCase
  test "should get create" do
    get :create
    assert_response :success
  end

  test "should get edit" do
    get :edit
    assert_response :success
  end

  test "should get take" do
    get :take
    assert_response :success
  end

end
