class HashtagController < ApplicationController
  def create
    url_base = 'https://api.instagram.com/v1/tags/'
    search_type = '/media/recent?access_token='
    token = ENV['INSTAGRAM_API_TOKEN']
    url = url_base + "dinosaurs" + search_type + token
    @data = JSON.parse RestClient.get url
  end
end
