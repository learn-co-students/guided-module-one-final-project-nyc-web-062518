require 'rest-client'
require 'json'
require 'pry'

park_data = RestClient.get('https://developer.nps.gov/api/v1/parks?&api_key=mjIjHyHdkl8frtoXIFXG3vmqRXu1C2PqKAkDxjyG')
park_hash = JSON.parse(park_hash)

binding.pry
true
