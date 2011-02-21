require 'yaml'


class Trainy

  def initialize
	config = YAML.load_file("wmata.yaml")
	@api_key = config["config"]["metro_api"]
  end
  
  def next_train()
  #http://api.wmata.com/StationPrediction.svc/json/GetPrediction/A10,A11?api_key=YOUR_API_KEY
  
  end



end
