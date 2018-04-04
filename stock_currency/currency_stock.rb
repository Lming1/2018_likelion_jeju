require 'stock_quote'
require 'eu_central_bank'

# 환율 정보 변경
bank = EuCentralBank.new
bank.update_rates
won = bank.exchange(100, "USD", "KRW") # Money.new(80, "USD")


# 주식 정보 가져오기
print '원하는 회사를 입력해주세요 : '
input = gets.chomp
stock = StockQuote::Stock.quote(input)
latest_price = stock.latest_price

result_price = latest_price * won
c_name = stock.company_name

puts "#{c_name}의 한 주당 주식 가격은 달러 : #{latest_price}, 원화 : #{result_price} 입니다."
