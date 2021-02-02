class Api::PhotosController < ApplicationController

  def index
    @photos = HTTP
      .auth(Rails.application.credentials.pexel_api[:api_key])
      .get("https://api.pexels.com/v1/search?query=#{params[:query]}")
      .parse["photos"]
    render "index.json.jb"
  end
end
