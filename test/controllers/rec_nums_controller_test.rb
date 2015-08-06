require 'test_helper'

class RecNumsControllerTest < ActionController::TestCase
  setup do
    @rec_num = rec_nums(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rec_nums)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rec_num" do
    assert_difference('RecNum.count') do
      post :create, rec_num: { number: @rec_num.number }
    end

    assert_redirected_to rec_num_path(assigns(:rec_num))
  end

  test "should show rec_num" do
    get :show, id: @rec_num
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rec_num
    assert_response :success
  end

  test "should update rec_num" do
    patch :update, id: @rec_num, rec_num: { number: @rec_num.number }
    assert_redirected_to rec_num_path(assigns(:rec_num))
  end

  test "should destroy rec_num" do
    assert_difference('RecNum.count', -1) do
      delete :destroy, id: @rec_num
    end

    assert_redirected_to rec_nums_path
  end
end
