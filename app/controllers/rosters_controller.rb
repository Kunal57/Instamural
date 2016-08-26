class RostersController < ApplicationController

  def new
    @roster = Roster.new
    @team = Team.find(params[:team_id])
  end

  def create
    @team = Team.find(params[:team_id])
    @roster = Roster.new(player_id: current_user.id, team_id: @team.id)
    if @roster.save
      redirect_to @team
    else
      @errors = @roster.errors.full_messages
      render 'new'
    end
  end

end
