class Api::ArticlesController < ApplicationController
  def index
    
    response = HTTP.get("https://api.darksky.net/forecast/#{ ENV['API_KEY']}/37.8267,-122")
    @maps = response.parse["maps"]
    render json: @maps
  end
end

