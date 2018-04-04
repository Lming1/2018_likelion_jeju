require 'stock_quote'

# 주식 정보 가져오기 
print '원하는 회사를 입력해주세요 : '
input = gets.chomp
stock = StockQuote::Stock.quote(input)

puts stock.latest_price
