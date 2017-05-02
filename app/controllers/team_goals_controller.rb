class TeamGoalsController < ApplicationController
  before_action :set_team_goal, only: [:show, :update, :destroy]

  # GET /team_goals
  def index
    @team_goals = TeamGoal.all

    render json: @team_goals
  end

  # GET /team_goals/1
  def show
    render json: @team_goal
  end

  # POST /team_goals
  def create
    @team_goal = TeamGoal.new(team_goal_params)

    if @team_goal.save
      render json: @team_goal, status: :created, location: @team_goal
    else
      render json: @team_goal.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /team_goals/1
  def update
    if @team_goal.update(team_goal_params)
      render json: @team_goal
    else
      render json: @team_goal.errors, status: :unprocessable_entity
    end
  end

  # DELETE /team_goals/1
  def destroy
    @team_goal.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_team_goal
      @team_goal = TeamGoal.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def team_goal_params
      params.require(:team_goal).permit(:team_id, :goal_id)
    end
end
