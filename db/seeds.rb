
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

event_two = parsed_data["_embedded"]["events"][1]

event_one = parsed_data["_embedded"]["events"][0]

event_one_name = event_one["name"]

event_one_date = event_one["dates"]["start"]["localDate"].to_date

event_one_time = event_one["dates"]["start"]["localTime"]

event_one_genre = event_one["classifications"][0]["genre"]["name"]

event_one_venue_name = event_one["_embedded"]["venues"][0]["name"]

event_one_artist_name = event_one["_embedded"]["attractions"][0]["name"]

binding.pry
