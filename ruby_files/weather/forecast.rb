require 'forecast_io'
require 'pry'

ForecastIO.configure do |configuration|
  configuration.api_key = '316b59dc6de6bb4d984f417b77db67b7'
end

def f_to_c (temp)
  return ((temp - 32) * 5 / 9).round 2
end

forecast = ForecastIO.forecast(25.137805, 55.261163)

temperature = forecast['currently']['temperature']
summary = forecast.currently.summary

puts f_to_c(temperature)
puts summary