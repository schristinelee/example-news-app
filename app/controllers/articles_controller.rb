class ArticlesController < ApplicationController
  def index
    key = Rails.application.credentials.news_api[:api_key]

    response = HTTP.get("https://newsapi.org/v2/everything?q=#{params[:search]}&apiKey=#{key}")
    render json: response.parse(:json)
  end
end
