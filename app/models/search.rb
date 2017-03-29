class Search

  def initialize
    @key = ENV['NREL_KEY']
    @connect = Faraday.new("https://api.data.gov/nrel/alt-fuel-stations/v1/nearest.json?limit=10&api_key=#{@key}")
    # Faraday.new("https://api.data.gov/nrel/alt-fuel-stations/v1/nearest.json?limit=10&api_key=#{@key}&location=80203&range=6.0")
  end

  private

  def parse
    JSON.parse(response.body, symbolize_names: true)
  end

end
