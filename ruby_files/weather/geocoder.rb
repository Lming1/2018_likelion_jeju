require 'geocoder'

print '위치를 입력하세요: '
input = gets.chomp

location = Geocoder.coordinates(input)
puts location