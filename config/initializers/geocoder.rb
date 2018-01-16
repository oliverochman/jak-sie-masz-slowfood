Geocoder.configure(
  timeout: 10,
  lookup: :google,
  api_key: ENV['GEOCODER_APIKEY'],
  units: :km
)
