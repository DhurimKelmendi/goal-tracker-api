require 'test_helper'

class CompanyGoalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @company_goal = company_goals(:one)
  end

  test "should get index" do
    get company_goals_url, as: :json
    assert_response :success
  end

  test "should create company_goal" do
    assert_difference('CompanyGoal.count') do
      post company_goals_url, params: { company_goal: { company_id: @company_goal.company_id, goal_id: @company_goal.goal_id } }, as: :json
    end

    assert_response 201
  end

  test "should show company_goal" do
    get company_goal_url(@company_goal), as: :json
    assert_response :success
  end

  test "should update company_goal" do
    patch company_goal_url(@company_goal), params: { company_goal: { company_id: @company_goal.company_id, goal_id: @company_goal.goal_id } }, as: :json
    assert_response 200
  end

  test "should destroy company_goal" do
    assert_difference('CompanyGoal.count', -1) do
      delete company_goal_url(@company_goal), as: :json
    end

    assert_response 204
  end
end
