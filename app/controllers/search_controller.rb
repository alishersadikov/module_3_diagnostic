class SearchController < ApplicationController
  def index
    @stations = NrelService.new.stations_by_zipcode(params[:zipcode])
  end
end
