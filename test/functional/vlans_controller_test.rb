require 'test_helper'

class VlansControllerTest < ActionController::TestCase
  setup do
    @vlan = vlans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vlans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vlan" do
    assert_difference('Vlan.count') do
      post :create, :vlan => @vlan.attributes
    end

    assert_redirected_to vlan_path(assigns(:vlan))
  end

  test "should show vlan" do
    get :show, :id => @vlan.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @vlan.to_param
    assert_response :success
  end

  test "should update vlan" do
    put :update, :id => @vlan.to_param, :vlan => @vlan.attributes
    assert_redirected_to vlan_path(assigns(:vlan))
  end

  test "should destroy vlan" do
    assert_difference('Vlan.count', -1) do
      delete :destroy, :id => @vlan.to_param
    end

    assert_redirected_to vlans_path
  end
end
