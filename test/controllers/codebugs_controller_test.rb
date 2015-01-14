require 'test_helper'

class CodebugsControllerTest < ActionController::TestCase
  setup do
    @codebug = codebugs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:codebugs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create codebug" do
    assert_difference('Codebug.count') do
      post :create, codebug: { content: @codebug.content, title: @codebug.title }
    end

    assert_redirected_to codebug_path(assigns(:codebug))
  end

  test "should show codebug" do
    get :show, id: @codebug
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @codebug
    assert_response :success
  end

  test "should update codebug" do
    patch :update, id: @codebug, codebug: { content: @codebug.content, title: @codebug.title }
    assert_redirected_to codebug_path(assigns(:codebug))
  end

  test "should destroy codebug" do
    assert_difference('Codebug.count', -1) do
      delete :destroy, id: @codebug
    end

    assert_redirected_to codebugs_path
  end
end
