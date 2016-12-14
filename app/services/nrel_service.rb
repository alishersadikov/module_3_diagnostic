class NrelService
  def self.stations_by_zipcode(zipcode)
    radius = "6.0"
    fuel_type = "ELEC,LPG"
    base_url = "https://developer.nrel.gov/api/alt-fuel-stations/v1/nearest.json"
    response = Faraday.get("#{base_url}?api_key=#{ENV["api_key"]}&location=#{zipcode}&radius=#{radius}&fuel_type=#{fuel_type}")
    parsed_response = (JSON.parse(response.body, :symbolize_names => true))
    parsed_response[:fuel_stations]
  end

  # def build_stations(json_response)
  #   raw_stations = json_response[:fuel_stations]
  #   stations = raw_stations.map { |raw_station|  Station.new(raw_station) }.first(10)
  # end
end
