require 'test_helper'

class Project00sControllerTest < ActionController::TestCase
  setup do
    @project00 = project00s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:project00s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project00" do
    assert_difference('Project00.count') do
      post :create, project00: {  }
    end

    assert_redirected_to project00_path(assigns(:project00))
  end

  test "should show project00" do
    get :show, id: @project00
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @project00
    assert_response :success
  end

  test "should update project00" do
    patch :update, id: @project00, project00: {  }
    assert_redirected_to project00_path(assigns(:project00))
  end

  test "should destroy project00" do
    assert_difference('Project00.count', -1) do
      delete :destroy, id: @project00
    end

    assert_redirected_to project00s_path
  end
end
