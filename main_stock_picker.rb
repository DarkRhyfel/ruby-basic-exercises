# Method: stock_picker
# Description: Takes an array of days and return the best days to buy and sell
# Parameter: days (array of integers)
# Return: result (array of integers)

def stock_picker(days)
    min_index = 0
    max_index = 0
    profit = 0

    days.each_with_index do |day, index|
        current_min_index = index

        index += 1
        remaining_days = days[index..-1]
        max_sell = remaining_days.max

        current_max_index = index < days.length ? remaining_days.find_index(max_sell) + index : days.length - 1

        possible_profit = days[current_max_index] - days[current_min_index]
        
        if possible_profit > profit
            profit = possible_profit
            min_index = current_min_index
            max_index = current_max_index
        end
    end

    [min_index, max_index]
end

# Invoke Method

p stock_picker([517,63,66,69,615,68,66,61,610])