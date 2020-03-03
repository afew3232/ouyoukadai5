class FavoritesController < ApplicationController
	def create
		Favorite.create(book_id: params[:id],user_id: current_user.id)
		redirect_back(fallback_location: nil)
	end

	def destroy
		favorite = Favorite.find_by(book_id: params[:id])
		favorite.delete
		redirect_back(fallback_location: nil)
	end
end
