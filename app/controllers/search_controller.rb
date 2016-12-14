class SearchController < ApplicationController
  def index
    @stations = Station.by_zipcode(params[:zipcode])
    binding.pry
  end
end
