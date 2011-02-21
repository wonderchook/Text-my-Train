require 'twiliolib'
require 'yaml'

class Texty


  def initialize
	config = YAML.load_file("twilio.yaml")
	@account = Twilio::RestAccount.new(config["config"]["account_sid"], config["config"]["account_token"])
	@uri = "/" + config["config"]["api_version"] + "/Accounts/" + config["config"]["account_sid"] + "/"
	@caller_id = config["config"]["caller_id"]
  end


  def text_out(outgoing_number, message)
	sms = {'From' => @caller_id, 'To' => outgoing_number, 'Body' => message}
	resp = @account.request(@uri + "SMS/Messages", 'POST', sms)
	resp.error! unless resp.kind_of? Net::HTTPSuccess
  #puts "code: %s\nbody: %s" % [resp.code, resp.body]
  end
end



