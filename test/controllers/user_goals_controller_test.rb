require 'test_helper'

class UserGoalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_goal = user_goals(:one)
  end

  test "should get index" do
    get user_goals_url, as: :json
    assert_response :success
  end

  test "should create user_goal" do
    assert_difference('UserGoal.count') do
      post user_goals_url, params: { user_goal: { goal_id: @user_goal.goal_id, user_id: @user_goal.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show user_goal" do
    get user_goal_url(@user_goal), as: :json
    assert_response :success
  end

  test "should update user_goal" do
    patch user_goal_url(@user_goal), params: { user_goal: { goal_id: @user_goal.goal_id, user_id: @user_goal.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy user_goal" do
    assert_difference('UserGoal.count', -1) do
      delete user_goal_url(@user_goal), as: :json
    end

    assert_response 204
  end
end
