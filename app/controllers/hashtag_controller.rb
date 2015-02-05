class HashtagController < ApplicationController
  respond_to :html, :js

  def search
    render "create"
  end

  def create
    url_base = 'https://api.instagram.com/v1/tags/'
    search_type = '/media/recent?access_token='
    token = ENV['INSTAGRAM_API_TOKEN']
    @tag = params[:tag]
    count = '&count=30'
    url = url_base + @tag + search_type + token + count
    data = JSON.parse RestClient.get url
    if data["pagination"]["next_url"]
      url2 = data["pagination"]["next_url"]
      data2 = JSON.parse RestClient.get url2
      @alldata = [data["data"], data2["data"]].flatten
    else
      @alldata = data["data"]
    end
  end

  def encode
    url = ENV['HASHMASH_ENCODE'] #url of encode server
    title = params[:title]
    music = params[:music]
    images = params[:imgs]
    #tag = params[:tag]
    data = {:jobname => title, :urls => images}.to_json

    response = RestClient.post url, data, {:content_type => :json, :accept => :json}
    result = JSON.parse response
    #send title, tag, and url from data to DB Create And Then Redirect to View

    if result["storage_url"]
      video = Video.create({title:title,
        url: result["storage_url"],
        tag: @tag,
        views: 0
      })
      video_path(video)
    else
      root_path
    end

  end

end
