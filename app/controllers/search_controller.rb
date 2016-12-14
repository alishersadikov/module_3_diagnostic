class SearchController < ApplicationController
  def index
    @parsed_response = NrelService.stations_by_zipcode(params[:zipcode])
  end
end
