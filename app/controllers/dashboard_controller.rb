class DashboardController < ApplicationController

	def index
		@q = Show.ransack(params[:q])
  	@shows = @q.result.includes(:channel)
	end

	def update
		show = Show.find(params[:id])
		if show.is_favorite
			show.is_favorite = false
		else
			show.is_favorite = true
		end
		show.save
		redirect_to root_path, notice: "Favorite status changed successfully"
	end

end
