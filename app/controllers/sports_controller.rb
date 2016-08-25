class SportsController < ApplicationController
	def index
		@sports = Sport.all.order('created_at ASC')
	end

	def new
	end

	def create
		@sport = Sport.new(post_params)
		@sport.save

		redirect_to @sport
	end

	def show
		@sport = Sport.find(params[:id])
	end

	private

		def post_params
			params.require(:sports).permit(:name, :max_players, :min_players)
		end

end
