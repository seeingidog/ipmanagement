require 'test_helper'

class LogsControllerTest < ActionController::TestCase
  setup do
    @log = logs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:logs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create log" do
    assert_difference('Log.count') do
      post :create, :log => @log.attributes
    end

    assert_redirected_to log_path(assigns(:log))
  end

  test "should show log" do
    get :show, :id => @log.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @log.to_param
    assert_response :success
  end

  test "should update log" do
    put :update, :id => @log.to_param, :log => @log.attributes
    assert_redirected_to log_path(assigns(:log))
  end

  test "should destroy log" do
    assert_difference('Log.count', -1) do
      delete :destroy, :id => @log.to_param
    end

    assert_redirected_to logs_path
  end
end
