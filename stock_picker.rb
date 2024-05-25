def stock_picker(array)
    buy_day = 0
    sell_day = 0
    profit = 0
    array.each_with_index do |buy_price, buy_date|
      array.each_with_index do|sell_price, sell_date|
          if (sell_date > buy_date) && (sell_price > buy_price) &&        (sell_price - buy_price > profit)
                buy_day = buy_date
                sell_day = sell_date
                profit = sell_price - buy_price
          end
        end
    end
  [buy_day, sell_day]
  end
  pp stock_picker([17,3,6,9,15,8,6,1,10])