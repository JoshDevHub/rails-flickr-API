class StaticPagesController < ApplicationController
  def index
    @photos_json = FlickrService.fetch_photos_for(params[:user_id])
  end
end
