require 'test_helper'

class DevonshiresControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:devonshires)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create devonshire" do
    assert_difference('Devonshire.count') do
      post :create, :devonshire => { }
    end

    assert_redirected_to devonshire_path(assigns(:devonshire))
  end

  test "should show devonshire" do
    get :show, :id => devonshires(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => devonshires(:one).to_param
    assert_response :success
  end

  test "should update devonshire" do
    put :update, :id => devonshires(:one).to_param, :devonshire => { }
    assert_redirected_to devonshire_path(assigns(:devonshire))
  end

  test "should destroy devonshire" do
    assert_difference('Devonshire.count', -1) do
      delete :destroy, :id => devonshires(:one).to_param
    end

    assert_redirected_to devonshires_path
  end
end
