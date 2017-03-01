class TeamsController < ApplicationController
  layout 'admin'

  before_action :confirm_logged_in

  def index
    @teams = Team.sorted
  end

  def show
    @team = Team.find(params[:id])
  end

  def new
    @team = Team.new
  end

  def create
    @teams = Team.all
    @team = Team.create(team_params)
  end

  def edit
    @team = Team.find(params[:id])
  end

  def update
    @teams = Team.all
    @team = Team.find(params[:id])

    @team.update_attributes(team_params)
  end

  def delete
    @team = Team.find(params[:id])
  end

  def destroy
    @teams = Team.all
    @team = Team.find(params[:id])
    @team.destroy
  end

  private

  def team_params
    params.require(:team).permit(
      :first_name,
      :last_name,
      :email,
      :description,
      :address1,
      :address2,
      :city,
      :state,
      :country,
      :zip,
      :cell_phone,
      :home_phone,
      :social
    )
  end
end
