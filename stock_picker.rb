stonks = [17,3,6,9,15,8,6,1,10]

def stock_picker(stonks)
  #array
  max_profit = [0,0]

  for i in 0...stonks.length
    if stonks[i..-1].max - stonks[i] > max_profit[1] - max_profit[0]
      max_profit = [i, stonks[i..-1].max]
    end
  end

  return [max_profit[0], stonks[max_profit[0]..-1].find_index(max_profit[1]) + max_profit[0]]

end

print(stock_picker(stonks))

puts "Hello, what is your name?"
input = gets.chomp
puts "Nice to meet you, #{input}. I am RubyBot 9000."
