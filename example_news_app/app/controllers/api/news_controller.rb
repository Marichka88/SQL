class Api::NewsController < ApplicationController

  def index
    response =HTTP.get("http")
@news = respose.parse["articles"]
render json: @news
end
end
