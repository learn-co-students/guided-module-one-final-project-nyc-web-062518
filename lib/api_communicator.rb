require 'rest-client'
require 'json'
require 'pry'

park_data = RestClient.get('https://developer.nps.gov/api/v1/parks?page=2&api_key=mjIjHyHdkl8frtoXIFXG3vmqRXu1C2PqKAkDxjyG&limit=500')
parks = JSON.parse(park_data)
