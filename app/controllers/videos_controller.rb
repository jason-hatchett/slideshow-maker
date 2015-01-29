class VideosController < ApplicationController
  
  def index
    @videos = Video.all
  end

  def new
    @video = Video.new
  end

  def show
    video = Video.find(params[:id])
    video.increment(:views)
    video.save

    @video = Video.find(params[:id])
  end

  def create
    video = Video.new(video_params)
    video.save
    redirect_to video_path(video)
  end

  def destroy
    @video = Video.find(params[:id])
    @video.destroy
    redirect_to root_path
  end

  private
  def video_params
    params.require(:video).permit(:title, :url, :tag, :views)
  end

end
