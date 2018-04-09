require 'eu_central_bank'
# 환율 바꿔주는 프로그램
bank = EuCentralBank.new
bank.update_rates
puts bank.exchange(100, "USD", "KRW") 