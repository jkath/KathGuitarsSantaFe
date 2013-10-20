require 'test_helper'

class BluesbayousControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bluesbayous)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bluesbayou" do
    assert_difference('Bluesbayou.count') do
      post :create, :bluesbayou => { }
    end

    assert_redirected_to bluesbayou_path(assigns(:bluesbayou))
  end

  test "should show bluesbayou" do
    get :show, :id => bluesbayous(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => bluesbayous(:one).to_param
    assert_response :success
  end

  test "should update bluesbayou" do
    put :update, :id => bluesbayous(:one).to_param, :bluesbayou => { }
    assert_redirected_to bluesbayou_path(assigns(:bluesbayou))
  end

  test "should destroy bluesbayou" do
    assert_difference('Bluesbayou.count', -1) do
      delete :destroy, :id => bluesbayous(:one).to_param
    end

    assert_redirected_to bluesbayous_path
  end
end
