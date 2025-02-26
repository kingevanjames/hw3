class PlacesController < ApplicationController

  def index
    @places = Place.all
  end

  def new
    @place = Place.new
  end

  def create
    @place = Place.new
    @place.name = params["name"]
    @place.save
    
    redirect_to "/places/#{@place["id"]}"
  end

  def show
    @place = Place.find_by({"id" => params["id"]})
    @entry = Entry.find_by({"place_id" => @place["id"]})
  end


end


