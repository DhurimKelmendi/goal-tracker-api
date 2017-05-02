require 'test_helper'

class TeamGoalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @team_goal = team_goals(:one)
  end

  test "should get index" do
    get team_goals_url, as: :json
    assert_response :success
  end

  test "should create team_goal" do
    assert_difference('TeamGoal.count') do
      post team_goals_url, params: { team_goal: { goal_id: @team_goal.goal_id, team_id: @team_goal.team_id } }, as: :json
    end

    assert_response 201
  end

  test "should show team_goal" do
    get team_goal_url(@team_goal), as: :json
    assert_response :success
  end

  test "should update team_goal" do
    patch team_goal_url(@team_goal), params: { team_goal: { goal_id: @team_goal.goal_id, team_id: @team_goal.team_id } }, as: :json
    assert_response 200
  end

  test "should destroy team_goal" do
    assert_difference('TeamGoal.count', -1) do
      delete team_goal_url(@team_goal), as: :json
    end

    assert_response 204
  end
end
