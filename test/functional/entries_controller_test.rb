require 'test_helper'

class EntriesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:entries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create entry" do
    assert_difference('Entry.count') do
      post :create, :entry => entries(:biologie).attributes
    end

    assert_redirected_to entry_path(assigns(:entry))
  end

  test "should show entry" do
    get :show, :id => entries(:biologie).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => entries(:biologie).to_param
    assert_response :success
  end

  test "should update entry" do
    put :update, :id => entries(:biologie).to_param, :entry => entries(:biologie).attributes
    assert_redirected_to entry_path(assigns(:entry))
  end

  test "should destroy entry" do
    assert_difference('Entry.count', -1) do
      delete :destroy, :id => entries(:biologie).to_param
    end

    assert_redirected_to entries_path
  end
end
