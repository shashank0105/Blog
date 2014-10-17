require 'test_helper'

class YourviewsControllerTest < ActionController::TestCase
  setup do
    @yourview = yourviews(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:yourviews)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create yourview" do
    assert_difference('Yourview.count') do
      post :create, yourview: { body: @yourview.body, post_id: @yourview.post_id }
    end

    assert_redirected_to yourview_path(assigns(:yourview))
  end

  test "should show yourview" do
    get :show, id: @yourview
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @yourview
    assert_response :success
  end

  test "should update yourview" do
    patch :update, id: @yourview, yourview: { body: @yourview.body, post_id: @yourview.post_id }
    assert_redirected_to yourview_path(assigns(:yourview))
  end

  test "should destroy yourview" do
    assert_difference('Yourview.count', -1) do
      delete :destroy, id: @yourview
    end

    assert_redirected_to yourviews_path
  end
end
