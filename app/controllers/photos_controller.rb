class PhotosController < ApplicationController
before_action :authenticate_user!
	def create
		@pictures = Pictures.find(params[:place_id])
		@place.pictures.create(comment_params.merge(:user => current_user))
		redirect_to place_path(@place)
	end

	private

  def comment_params
    params.require(:pictures).permit(:files)
  end
end
