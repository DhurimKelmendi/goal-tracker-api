class CompanyGoalsController < ApplicationController
  before_action :set_company_goal, only: [:show, :update, :destroy]

  # GET /company_goals
  def index
    @company_goals = CompanyGoal.all

    render json: @company_goals
  end

  # GET /company_goals/1
  def show
    render json: @company_goal
  end

  # POST /company_goals
  def create
    @company_goal = CompanyGoal.new(company_goal_params)

    if @company_goal.save
      render json: @company_goal, status: :created, location: @company_goal
    else
      render json: @company_goal.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /company_goals/1
  def update
    if @company_goal.update(company_goal_params)
      render json: @company_goal
    else
      render json: @company_goal.errors, status: :unprocessable_entity
    end
  end

  # DELETE /company_goals/1
  def destroy
    @company_goal.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_company_goal
      @company_goal = CompanyGoal.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def company_goal_params
      params.require(:company_goal).permit(:goal_id, :company_id)
    end
end
