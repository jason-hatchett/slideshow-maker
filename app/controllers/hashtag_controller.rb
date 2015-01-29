class HashtagController < ApplicationController
  respond_to :html, :js

  def search
    render "create"
  end

  def create
    url_base = 'https://api.instagram.com/v1/tags/'
    search_type = '/media/recent?access_token='
    token = ENV['INSTAGRAM_API_TOKEN']
    tag = params[:tag]
    puts tag
    url = url_base + tag + search_type + token
    @data = JSON.parse RestClient.get url
  end
end
