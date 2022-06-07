class StaticPagesController < ApplicationController
  def index
    @photos = FlickrService.fetch_photos_for(params[:user_id])
  end
end
