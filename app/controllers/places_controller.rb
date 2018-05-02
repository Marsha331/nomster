class PlacesController < ApplicationController
  def index
    @places = Place.all
    Place.paginate(:place => params[:place], :per_page => 10)
  end

end
