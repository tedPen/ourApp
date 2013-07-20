require 'test_helper'

class SusControllerTest < ActionController::TestCase
  setup do
    @su = sus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create su" do
    assert_difference('Sus.count') do
      post :create, su: { q10: @su.q10, q1: @su.q1, q2: @su.q2, q3: @su.q3, q4: @su.q4, q4: @su.q4, q5: @su.q5, q6: @su.q6, q7: @su.q7, q8: @su.q8, q9: @su.q9, score: @su.score }
    end

    assert_redirected_to su_path(assigns(:su))
  end

  test "should show su" do
    get :show, id: @su
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @su
    assert_response :success
  end

  test "should update su" do
    put :update, id: @su, su: { q10: @su.q10, q1: @su.q1, q2: @su.q2, q3: @su.q3, q4: @su.q4, q4: @su.q4, q5: @su.q5, q6: @su.q6, q7: @su.q7, q8: @su.q8, q9: @su.q9, score: @su.score }
    assert_redirected_to su_path(assigns(:su))
  end

  test "should destroy su" do
    assert_difference('Sus.count', -1) do
      delete :destroy, id: @su
    end

    assert_redirected_to sus_index_path
  end
end
