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
    count = '&count=30'
    url = url_base + tag + search_type + token + count
    @data = JSON.parse RestClient.get url
  end

  def pictures_selected
    #variable that's an array of pictures
  end

end
