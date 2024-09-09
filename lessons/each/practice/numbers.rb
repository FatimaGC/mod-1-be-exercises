# Use .each to complete the following:

numbers = [1,2,3,4,5]

# 1. Can you create a new array with only the odd numbers?

odd_numbers = []

numbers.each do |number|
    if number.odd?
        odd_numbers << number
    end 
end

puts odd_numbers

# 2. Can you create a new array with only the even numbers?

even_numbers = []

numbers.each do |number|
    if number.even?
        even_numbers << number
    end 
end

puts even_numbers

# 3. Can you print out each number doubled?

doubled_numbers = []

numbers.each do |number|
    doubled_numbers << number * 2
end

puts doubled_numbers

# 4. Can you print out if the number is divisible by 2 or not?

divisible_by_2 = []

numbers.each do |number|
    if number % 2 == 0
        divisible_by_2 << number 
    end
end

puts divisible_by_2

# 5. Can you find the the sum of the numbers?

sum = 0

numbers.each do |number|
    sum += number
end 

puts sum