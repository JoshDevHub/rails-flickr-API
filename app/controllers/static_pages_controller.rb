class StaticPagesController < ApplicationController
  def index
    @photos = FlickrService.call(params[:user_id])
  end
end
