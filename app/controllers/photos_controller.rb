class PhotosController < ApplicationController
  require 'flickraw'
  before_action :set_flickr

  def index
    if !params[:user_id].nil?
      @photos = flickr.photos.search(user_id: params[:user_id]).first(15)
      @section_message = "You can see the recent photos uploaded by the user with the ID `#{params[:user_id]}` : (refresh page for updates)" # rubocop: disable Layout/LineLength
    else
      @photos = flickr.photos.getRecent.first(15)
      @section_message = 'You can see the recent photos uploaded on Flickr below: (refresh page for updates)'
    end
  rescue FlickRaw::FailedResponse => e
    p e
    redirect_to root_path, notice: 'User does not exist!'
  end

  def create
    if params[:user_id].size.positive?
      redirect_to root_path(user_id: params[:user_id])
    else
      redirect_to root_path, notice: 'Please provide a correct user id!'
    end
  end

  private

  def set_flickr
    FlickRaw.api_key = ENV['FLICKRAW_API_KEY']
    FlickRaw.shared_secret = ENV['FLICKRAW_SHARED_SECRET']
  end
end
