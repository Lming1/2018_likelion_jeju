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

print real_numbers