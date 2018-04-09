require 'forecast_io'
require 'pry'
require 'geocoder'

ForecastIO.configure do |configuration|
  configuration.api_key = '316b59dc6de6bb4d984f417b77db67b7'
end

def f_to_c (temp)
  return ((temp - 32) * 5 / 9).round 2
end

print "검색할 곳을 입력하세요: "
input = gets.chomp

location = Geocoder.coordinates input

forecast = ForecastIO.forecast(location[0], location[1])

temperature = forecast['currently']['temperature']
summary = forecast.currently.summary

puts f_to_c(temperature)
puts summary