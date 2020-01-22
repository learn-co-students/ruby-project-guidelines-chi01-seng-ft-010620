
require 'net/http'
require 'open-uri'
require 'json'
 
class GetEventData
 
  URL = "https://app.ticketmaster.com/discovery/v2/events.json?classificationName=music&city=chicago&apikey=OxAUCcJUKtQrQ1kqMHoDype2kxM5A3Nz"
 
  def get_data
    uri = URI.parse(URL)
    response = Net::HTTP.get_response(uri)
    response.body
  end
 
end
 
data = GetEventData.new.get_data

parsed_data = JSON.parse(data)
binding.pry
