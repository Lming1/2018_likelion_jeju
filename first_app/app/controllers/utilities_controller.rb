require 'open-uri'
require 'json'

class UtilitiesController < ApplicationController
  def stock
  end

  def weather
  end

  def lotto
    url = 'http://www.nlotto.co.kr/common.do?method=getLottoNumber&drwNo=801'
    res = open(url)
    text = res.read
        lotto_info = JSON.parse(text)

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

    if match_count == 6
      @rank = '1등'
    elsif match_count == 5 && my_numbers.include?(bonus_number)
      @rank = '2등'
    elsif match_count == 5
      @rank = '3등'
    elsif match_count == 4
      @rank = '4등'
    elsif match_count == 3
      @rank = '5등'
    else
      @rank = '다음 기회에..'
    end

    @my_numbers = my_numbers
    @real_numbers = real_numbers
    @match_numbers = match_numbers

  end

  def index
  end

  def get_stock
    # 사용자가 주식 심볼 입력하는 페이지

  end

  def show_stock
    #get_stock 에서 입력한 data로 주식 정보 찾아서 보여주기
    #example params['input_symbol']
    symbol = params[:input_symbol]
    @stock = StockQuote::Stock.quote(symbol)
    # if @stock.nil?
    #   redirect_to 'utilities/get_stock'
    # end


  end



end
