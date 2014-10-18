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
<<<<<<< HEAD
      post :create, yourview: { article_id: @yourview.article_id, body: @yourview.body }
=======
      post :create, yourview: { body: @yourview.body, post_id: @yourview.post_id }
>>>>>>> 8d36c7b124e85e35b34a20759d6f392241cfcb51
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
<<<<<<< HEAD
    patch :update, id: @yourview, yourview: { article_id: @yourview.article_id, body: @yourview.body }
=======
    patch :update, id: @yourview, yourview: { body: @yourview.body, post_id: @yourview.post_id }
>>>>>>> 8d36c7b124e85e35b34a20759d6f392241cfcb51
    assert_redirected_to yourview_path(assigns(:yourview))
  end

  test "should destroy yourview" do
    assert_difference('Yourview.count', -1) do
      delete :destroy, id: @yourview
    end

    assert_redirected_to yourviews_path
  end
end
