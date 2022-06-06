class StaticPagesController < ApplicationController
  def index
    @photos = flickr_photos(params[:user_id])
  end

  private

  def flickr_photos(user_id)
    url = "#{ENV.fetch('flickr_base_url')}&api_key=#{ENV.fetch('flickr_key')}&user_id=#{user_id}"
    photos_response = RestClient.get(url, accept: :json)
    photos_response.body if photos_response.code == 200
  end
end
