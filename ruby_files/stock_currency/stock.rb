require 'stock_quote'

# 주식 가격 가져오기
print '원하는 기업의 symbol 을 입력해 주세요 : '
input = gets.chomp
stock = StockQuote::Stock.quote(input)
puts stock.latest_price
