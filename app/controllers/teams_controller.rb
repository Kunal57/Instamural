class TeamsController < ApplicationController
  def index
    @teams = Team.all
  end

  def show
    @team = Team.find_by(id: params[:id])
    @games = @team.games.sort_by(&:updated_at)
  end

  def new
    @team = Team.new
  end

  def create
    @team = Team.new(post_params)

    if @team.save
      redirect_to teams_path
    else
      render 'new'
    end
  end

  private

	def post_params
    params.require(:team).permit(:name, :sport_id, :mascot_name, :mascot_url).merge(captain_id: current_user.id)
	end

end
