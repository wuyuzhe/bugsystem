require 'test_helper'

class BugtypesControllerTest < ActionController::TestCase
  setup do
    @bugtype = bugtypes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bugtypes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bugtype" do
    assert_difference('Bugtype.count') do
      post :create, bugtype: { typename: @bugtype.typename }
    end

    assert_redirected_to bugtype_path(assigns(:bugtype))
  end

  test "should show bugtype" do
    get :show, id: @bugtype
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bugtype
    assert_response :success
  end

  test "should update bugtype" do
    patch :update, id: @bugtype, bugtype: { typename: @bugtype.typename }
    assert_redirected_to bugtype_path(assigns(:bugtype))
  end

  test "should destroy bugtype" do
    assert_difference('Bugtype.count', -1) do
      delete :destroy, id: @bugtype
    end

    assert_redirected_to bugtypes_path
  end
end
