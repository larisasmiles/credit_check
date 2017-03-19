# card_number = "4929735477250543"

# valid = false

# Your Luhn Algorithm Here

# Output
## If it is valid, print "The number is valid!"
## If it is invalid, print "The number is invalid!"

# acc = cn.split("")
# check_digit = acc.pop

# acc.each_with_index do |x,idx|
#     if idx.even?
#         acc[idx] = x * 2
#     end

# require "pry"
# a = "456"
# b = a.split(//)

# b.each do |num| 
#     puts (num.to_i * 2) 
# end
# binding.pry 
# " "


card_number = "4024007106512380"
cc = card_number.reverse.split(//)
 p cc

numbers = cc.map do |num|
    num.to_i
end

p numbers

multiply_by_2 = numbers.map.with_index do |num, index|
    if index.odd?
        num * 2
    else 
        num 
    end
end    
p multiply_by_2
 
checking = multiply_by_2.map do |num|
     if num > 9 
        c = num - 9
    else
        num 
    end
end
p checking

credit_card_num = checking.reduce(:+)
    
p credit_card_num

if credit_card_num % 10 == 0 
 puts " it's vaild!"
else 
    puts " It's invalid!"
end 