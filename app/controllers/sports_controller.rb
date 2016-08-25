class SportsController < ApplicationController
	def index
		@sports = Sport.all.order('created_at ASC')
	end

	def new
		@sport = Sport.new
	end

	def create
		@sport = Sport.new(post_params)

		if @sport.save
			redirect_to @sport
		else
			render 'new'
		end
	end

	def show
		@sport = Sport.find(params[:id])
	end

	def edit
		@sport = Sport.find(params[:id])
	end

	def update
		@sport = Sport.find(params[:id])

		if @sport.update(params[:sport].permit(:name, :max_players, :min_players))
			redirect_to @sport
		else
			render 'edit'
		end
	end

	def destroy
		@sport = Sport.find(params[:id])
		@sport.destroy

		redirect_to sports_path
	end


	private

		def post_params
			params.require(:sports).permit(:name, :max_players, :min_players)
		end

end
