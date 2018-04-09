require 'open-uri'
require 'json'
require 'pry'

url = 'http://www.nlotto.co.kr/common.do?method=getLottoNumber&drwNo=800'
res = open(url)
text = res.read
lotto_info = JSON.parse(text)

binding.pry

real_numbers = [
  lotto_info['drwtNo1'],
  lotto_info['drwtNo2'],
  lotto_info['drwtNo3'],
  lotto_info['drwtNo4'],
  lotto_info['drwtNo5'],
  lotto_info['drwtNo6'],
  ]
  
puts real_numbers