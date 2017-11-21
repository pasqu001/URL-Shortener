class UrlsController < ApplicationController
  before_action :set_url, only: [:show]
  def index
    @urls = Url.all
  end

  def show
    redirect_to @url.long_url
  end

  def create
    @url = Url.new(url_params)
    @url.save
    redirect_to index_path
  end

  def new
    @url = Url.new
  end

  private

  def set_url
    @url = Url.find(params[:id])
  end

  def url_params
   params.require(:url).permit(:long_url)
  end
end
