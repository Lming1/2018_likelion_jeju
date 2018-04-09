require 'eu_central_bank'
require 'stock_quote'

# 환전 프로그램
bank = EuCentralBank.new
bank.update_rates

won = bank.exchange(100, "USD", "KRW")

# 주식 가격 가져오기
print '원하는 기업의 symbol 을 입력해 주세요 : '
input = gets.chomp

stock = StockQuote::Stock.quote(input)

c_name = stock.company_name
price_d = stock.latest_price 
price_w = price_d * won

puts "#{c_name} 의 가격은 #{price_d} 이며 원화로 #{price_w} 입니다." 