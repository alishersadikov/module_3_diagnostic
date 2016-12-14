class SearchController < ApplicationController
  def index
    zipcode = params[:zipcode]
    radius = "6.0"
    fuel_type = "ELEC,LPG"
    base_url = "https://developer.nrel.gov/api/alt-fuel-stations/v1/nearest.json"
    response = Faraday.get("#{base_url}?api_key=#{ENV["api_key"]}&location=#{zipcode}&radius=#{radius}&fuel_type=#{fuel_type}")
    binding.pry
  end
end
