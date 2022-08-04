def stock_picker(prices)
    profit = {}
    prices_dub = []
   prices.each {|e| prices_dub.push(e)}
   prices.each_with_index do |prices_to_buy, buy_day|
        prices_dub.each_with_index do |prices_to_sell, sell_day|
            if buy_day < sell_day
                profit[prices_to_sell-prices_to_buy] = [buy_day, sell_day]
            end
        end
    end
    result = profit.max_by {|key, value| key}
    result[1]
end
p stock_picker([17,3,6,9,15,8,6,1,10])