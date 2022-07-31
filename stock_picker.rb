def stock_picker(arrayinput)
  min_pos=0
  max_pos=0
  max_profit = -1 
 arrayinput.each_with_index do |item,i|
    arrayinput.each_with_index do |item_2,j|
      if item_2-item > max_profit
        if j>=i
          max_profit=item_2 - item
          min_pos = i
          max_pos = j
        end
      end
    end
  end
  return min_pos,max_pos
end


puts(stock_picker([17,3,6,9,15,8,6,1,10]))