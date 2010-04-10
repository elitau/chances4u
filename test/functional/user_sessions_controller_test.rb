require 'test_helper'
require "authlogic/test_case"

class UserSessionsControllerTest < ActionController::TestCase
  
  setup :activate_authlogic
  
  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_session" do
    assert !@controller.current_user_session
    post :create, :user_session => users(:alumni).attributes
    assert @controller.current_user
    assert_redirected_to root_url
  end

  # test "should show user_session" do
  #   get :show, :id => user_sessions(:one).to_param
  #   assert_response :success
  # end
  # 
  # test "should get edit" do
  #   get :edit, :id => user_sessions(:one).to_param
  #   assert_response :success
  # end
  # 
  # test "should update user_session" do
  #   put :update, :id => user_sessions(:one).to_param, :user_session => user_sessions(:one).attributes
  #   assert_redirected_to user_session_path(assigns(:user_session))
  # end
  # 
  test "should destroy user_session" do
    assert @controller.current_user
    delete :destroy
    assert !@controller.current_user_session
    
    assert_redirected_to user_sessions_path
  end
end
