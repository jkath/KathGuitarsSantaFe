require 'test_helper'

class GuitarPicsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:guitar_pics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create guitar_pic" do
    assert_difference('GuitarPic.count') do
      post :create, :guitar_pic => { }
    end

    assert_redirected_to guitar_pic_path(assigns(:guitar_pic))
  end

  test "should show guitar_pic" do
    get :show, :id => guitar_pics(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => guitar_pics(:one).to_param
    assert_response :success
  end

  test "should update guitar_pic" do
    put :update, :id => guitar_pics(:one).to_param, :guitar_pic => { }
    assert_redirected_to guitar_pic_path(assigns(:guitar_pic))
  end

  test "should destroy guitar_pic" do
    assert_difference('GuitarPic.count', -1) do
      delete :destroy, :id => guitar_pics(:one).to_param
    end

    assert_redirected_to guitar_pics_path
  end
end
