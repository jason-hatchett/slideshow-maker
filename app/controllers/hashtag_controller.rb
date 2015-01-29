class HashtagController < ApplicationController
  def create
    @data = JSON.parse RestClient.get 'https://api.instagram.com/v1/tags/dinosaurs/media/recent?access_token=186324152.2933407.a96d5f8c47f046bf8510ad327ec61d06'

  end
end
