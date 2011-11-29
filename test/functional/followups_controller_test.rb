require 'test_helper'

class FollowupsControllerTest < ActionController::TestCase
  setup do
    @followup = followups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:followups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create followup" do
    assert_difference('Followup.count') do
      post :create, followup: @followup.attributes
    end

    assert_redirected_to followup_path(assigns(:followup))
  end

  test "should show followup" do
    get :show, id: @followup.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @followup.to_param
    assert_response :success
  end

  test "should update followup" do
    put :update, id: @followup.to_param, followup: @followup.attributes
    assert_redirected_to followup_path(assigns(:followup))
  end

  test "should destroy followup" do
    assert_difference('Followup.count', -1) do
      delete :destroy, id: @followup.to_param
    end

    assert_redirected_to followups_path
  end
end
