class FlickrService
  def initialize(user_id)
    @user_id = user_id
  end

  def self.call(...)
    new(...).fetch_user_photos
  end

  def fetch_user_photos
    url = build_url
    response = RestClient.get(url, accept: :json)
    response.body
  end

  private

  def build_url
    base_url = ENV.fetch("flickr_base_url")
    api_param = "&api_key=#{ENV.fetch('flickr_key')}"
    user_param = "&user_id=#{@user_id}"

    "#{base_url}#{api_param}#{user_param}"
  end
end
