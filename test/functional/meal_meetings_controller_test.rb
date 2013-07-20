require 'test_helper'

class MealMeetingsControllerTest < ActionController::TestCase
  setup do
    @meal_meeting = meal_meetings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:meal_meetings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create meal_meeting" do
    assert_difference('MealMeeting.count') do
      post :create, meal_meeting: { interests: @meal_meeting.interests, location: @meal_meeting.location, time: @meal_meeting.time, title: @meal_meeting.title }
    end

    assert_redirected_to meal_meeting_path(assigns(:meal_meeting))
  end

  test "should show meal_meeting" do
    get :show, id: @meal_meeting
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @meal_meeting
    assert_response :success
  end

  test "should update meal_meeting" do
    put :update, id: @meal_meeting, meal_meeting: { interests: @meal_meeting.interests, location: @meal_meeting.location, time: @meal_meeting.time, title: @meal_meeting.title }
    assert_redirected_to meal_meeting_path(assigns(:meal_meeting))
  end

  test "should destroy meal_meeting" do
    assert_difference('MealMeeting.count', -1) do
      delete :destroy, id: @meal_meeting
    end

    assert_redirected_to meal_meetings_path
  end
end
