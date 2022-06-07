class FlickrService
  def self.fetch_photos_for(user_id)
    return if user_id.nil?

    begin
      flickr = Flickr.new
      flickr.people.getPhotos(user_id: user_id)
    rescue Flickr::FailedResponse
      nil
    end
  end
end
