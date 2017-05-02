class UserGoalsController < ApplicationController
  before_action :set_user_goal, only: [:show, :update, :destroy]

  # GET /user_goals
  def index
    @user_goals = UserGoal.all

    render json: @user_goals
  end

  # GET /user_goals/1
  def show
    render json: @user_goal
  end

  # POST /user_goals
  def create
    @user_goal = UserGoal.new(user_goal_params)

    if @user_goal.save
      render json: @user_goal, status: :created, location: @user_goal
    else
      render json: @user_goal.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /user_goals/1
  def update
    if @user_goal.update(user_goal_params)
      render json: @user_goal
    else
      render json: @user_goal.errors, status: :unprocessable_entity
    end
  end

  # DELETE /user_goals/1
  def destroy
    @user_goal.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_goal
      @user_goal = UserGoal.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_goal_params
      params.require(:user_goal).permit(:goal_id, :user_id)
    end
end
