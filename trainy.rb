require 'rubygems'
require 'yaml'
require 'net/http'
require 'json'

class Trainy

  def initialize
	config = YAML.load_file("wmata.yaml")
	@api_key = config["config"]["metro_api"]
  end
  
  def next_train(station_id)
	return Net::HTTP.get("api.wmata.com", "/StationPrediction.svc/json/GetPrediction/" + station_id + "?api_key=" + @api_key)
  end



end
