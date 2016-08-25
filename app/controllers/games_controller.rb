class GamesController < ApplicationController

	def index
		@games = Game.all.order('created_at ASC')
	end

	def new
		@game = Game.new
	end

	def create
		@game = Game.new(post_params)

		if @game.save
			redirect_to @game
		else
			render 'new'
		end
	end

	def show
		@game = Game.find(params[:id])
	end

	def edit
		@game = Game.find(params[:id])
	end

	def update
		@game = Game.find(params[:id])

		if @game.update(params[:game].permit(:location, :schedule))
			redirect_to @game
		else
			render 'edit'
		end
	end

	def destroy
		@game = Game.find(params[:id])
		@game.destroy

		redirect_to games_path
	end


	private

		def post_params
			params.require(:game).permit(:location, :schedule)
		end

end
