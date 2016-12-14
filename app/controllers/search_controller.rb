class SearchController < ApplicationController
  def index
    @parsed_response = NrelService.new.stations_by_zipcode(params[:zipcode])
  end
end
