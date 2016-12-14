class SearchController < ApplicationController
  def index
    @stations = Station.by_zipcode(params[:zipcode])
  end
end
