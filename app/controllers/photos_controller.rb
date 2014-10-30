class PhotosController < ApplicationController

  def index
    @photos = Place.find(params[:place_id]).photos
    @photos = Photo.order(created_at: :desc)
  end

  def show
    @place = Place.find(params[:place_id])
    @photo = @place.Photo.find(params[:photo_id])
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(place_id: params[:place_id], url: params[:photo][:url], description: params[:photo][:description])
    if @photo.save
      redirect_to @photo
    else
      @error = "Photo not saved"
      # render "new"
    end
  end

  def update
    @place = Place.find(params[:place_id])
    @photo = @place.Photo.find(params[:photo_id])
    @photo.update_attributes(params[:photo])
    redirect_to place
  end

  def destroy
    @place = Place.find(params[:place_id])
    @photo = @place.Photo.find(params[:photo_id])
    @photo.destroy
  end
end