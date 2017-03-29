class Search
  attr_reader :key, :connect, :location
  def initialize(location)
    @location = location
    @key = ENV['NREL_KEY']
    @connect = Faraday.new("https://api.data.gov/nrel/alt-fuel-stations/v1/")
  end

  def query_results
    parse(connect.get "nearest.json?limit=10&api_key=#{@key}&location=#{@location}&range=6.0&fuel_type=ELEC,LPG")
  end

  private

  def parse(connect)
    JSON.parse(connect.body, symbolize_names: true)
  end

end
