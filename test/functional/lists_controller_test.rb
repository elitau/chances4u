require 'test_helper'

class ListsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create list" do
    assert_difference('List.count') do
      post :create, :list => lists(:deutschland).attributes
    end

    assert_redirected_to list_path(assigns(:list))
  end

  test "should show list" do
    get :show, :id => lists(:deutschland).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => lists(:deutschland).to_param
    assert_response :success
  end

  test "should update list" do
    put :update, :id => lists(:deutschland).to_param, :list => lists(:deutschland).attributes
    assert_redirected_to list_path(assigns(:list))
  end

  test "should destroy list" do
    assert_difference('List.count', -1) do
      delete :destroy, :id => lists(:deutschland).to_param
    end

    assert_redirected_to lists_path
  end
end
