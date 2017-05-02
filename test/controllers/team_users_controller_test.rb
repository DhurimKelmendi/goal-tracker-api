require 'test_helper'

class TeamUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @team_user = team_users(:one)
  end

  test "should get index" do
    get team_users_url, as: :json
    assert_response :success
  end

  test "should create team_user" do
    assert_difference('TeamUser.count') do
      post team_users_url, params: { team_user: { team_id: @team_user.team_id, user_id: @team_user.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show team_user" do
    get team_user_url(@team_user), as: :json
    assert_response :success
  end

  test "should update team_user" do
    patch team_user_url(@team_user), params: { team_user: { team_id: @team_user.team_id, user_id: @team_user.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy team_user" do
    assert_difference('TeamUser.count', -1) do
      delete team_user_url(@team_user), as: :json
    end

    assert_response 204
  end
end
