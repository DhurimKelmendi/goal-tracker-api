class TeamUsersController < ApplicationController
  before_action :set_team_user, only: [:show, :update, :destroy]

  # GET /team_users
  def index
    @team_users = TeamUser.all

    render json: @team_users
  end

  # GET /team_users/1
  def show
    render json: @team_user
  end

  # POST /team_users
  def create
    @team_user = TeamUser.new(team_user_params)

    if @team_user.save
      render json: @team_user, status: :created, location: @team_user
    else
      render json: @team_user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /team_users/1
  def update
    if @team_user.update(team_user_params)
      render json: @team_user
    else
      render json: @team_user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /team_users/1
  def destroy
    @team_user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_team_user
      @team_user = TeamUser.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def team_user_params
      params.require(:team_user).permit(:team_id, :user_id)
    end
end
