require 'test_helper'

class ProjectPicsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:project_pics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project_pic" do
    assert_difference('ProjectPic.count') do
      post :create, :project_pic => { }
    end

    assert_redirected_to project_pic_path(assigns(:project_pic))
  end

  test "should show project_pic" do
    get :show, :id => project_pics(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => project_pics(:one).to_param
    assert_response :success
  end

  test "should update project_pic" do
    put :update, :id => project_pics(:one).to_param, :project_pic => { }
    assert_redirected_to project_pic_path(assigns(:project_pic))
  end

  test "should destroy project_pic" do
    assert_difference('ProjectPic.count', -1) do
      delete :destroy, :id => project_pics(:one).to_param
    end

    assert_redirected_to project_pics_path
  end
end
