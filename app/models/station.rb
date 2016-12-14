class Station
  attr_reader :name, :address, :fuel_type, :distance, :access_time

  def initialize(raw_data)
    @name = raw_data[:station_name]
    @address = raw_data[:stree_address]
    @fuel_type = raw_data[:fuel_type]
    @distance = raw_data[:distance]
    @access_time = raw_data[:access_days_time]
  end

  def self.by_zipcode(zipcode)
    raw_stations = NrelService.stations_by_zipcode(zipcode)
    raw_stations.each { |raw_station|  Station.new(raw_station) }
  end
  
end
