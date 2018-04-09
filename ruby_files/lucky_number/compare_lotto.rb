require 'open-uri'
require 'json'
require 'pry'

url = 'http://www.nlotto.co.kr/common.do?method=getLottoNumber&drwNo=800'
res = open(url)
text = res.read
lotto_info = JSON.parse(text)

# binding.pry

real_numbers = []

lotto_info.each do |key, value|
  if key.include? 'drwtNo'
    real_numbers << value
  end
end

real_numbers.sort!
bonus_number = lotto_info['bnusNo']
my_numbers = (1..45).to_a.sample(6).sort

match_numbers = real_numbers & my_numbers
match_count = match_numbers.count

puts "내가 뽑은 번호는 #{my_numbers}"
puts "이번주 번호는 #{real_numbers} 이고 보너스 번호는 #{bonus_number}"
puts "내가 맞춘 번호는 #{match_numbers}"
# 1등 : match_count ==  6 이면 1등
if match_count == 6
  puts '1등'
# 2등 : match_count ==  5 이고, 나머지 하나 숫자가 == bnusNo
elsif match_count == 5 && my_numbers.include?(bonus_number)
  puts '2등'
# 3등 : match_count ==  5 이면 3등
elsif match_count == 5
  puts '3등'
# 4등 : match_count ==  4 이면 4등
elsif match_count == 4
  puts '4등'
# 5등 : match_count ==  3 이면 5등
elsif match_count == 3
  puts '5등'
# 그외 : 꽝
else
  puts '다음 기회에..'
end

