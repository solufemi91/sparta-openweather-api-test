require 'json'

json = File.read('iso_country_data.json')


json_parse = JSON.parse(json)

puts json_parse[0]
