# 1. Print "Hello World" to the console

puts "Hello World"

adjective = "Big Bad"

# 2. Interpolate the adjectivevariable into the Hello World string using #{}

puts "Hello #{adjective} World"

#3. Save "Hello World" to a variable. Without changing the letters in your code manually, permanently change "Hello World" to all uppercased letters.

number_three = "Hello World"

p number_three.upcase

##Nums Array and Enumerables

nums = [5, 5, 6, 7, 2, 4, 3, 2, 1, 9, 7, 6, 0, 0, 35, 19, 66, 3, 22, 21, 4, 4, 4, 0, 1, 2, 3, 4, 12, 15]

# 1. Use .uniq to print the array with all duplicate entries removed

puts nums.uniq()

# 2. Next, use .push and .pop, .shift .unshift and .length on on the array as you would with javaScript (if you need to add a number, add 5)

# .push
A = nums.push(5)
puts "#{A}"

# .pop
B = nums.pop
C = nums

puts "#{B}"
puts "#{C}"

# .shift
puts "#{C.shift()}"
puts "#{C}"

# .unshifted
puts "#{C.unshift(5)}"

# .length
puts "#{C.length()}"

# 3. Use .include? to check if the array contains the number 8
p C.include?(8)

# 4. Use .find_all to find all the numbers greater than 10
p nums.find_all {|i| i >= 10}

# 5. use .all? to check if all the numbers are greater than 0?
nums1 = nums.all? { |x| x >= 0}
puts nums1

# .6 use any? to check if there are any numbers that are divisible by 8
nums2 = nums.any? {|y| y / 8}
puts nums2

# 7. use .count to let you know how many numbers are greater than 4
p nums.count {|x| x > 4}

# 8. use .each_with_index to print each item times its index
nums.each_with_index do |num, idx|
    puts "#{idx} * #{num}"
end

# 9. .find the number that is divisible by 7 and 5 and is greater than 0
p nums.find {|n| n % 7 == 0 && n % 5 == 0 && n > 0}

# 10. .find_index of the number that is divisible by 5 and 7 and is greater than 0
puts nums.find_index{|n| n % 7 == 0 && n % 5 == 0 && n > 0}

# 11. return the .first 3 numbers
p nums.first()

# 12. return the .last 5 numbers
p nums.last(5)

# 13. .group_by the modulo of 3 ( % 3)
p nums.group_by { |x| x % 3 == 3} ## The modulo threw me off, I was not sure if it was this one 
p nums.group_by { |y| y % 3} ## or this one. 

# 14. use minmax to return the smallest and largest number
p nums.minmax

# 15. use .reject to return all the numbers that are NOT divisible by 3
p nums.reject {|r| r % 3 == 0 }

# 16. use .select to return all the numbers divisible by 5
p nums.select {|x| x % 5 == 0}

## Color Array
colors = ['red', 'orange', 'yellow', 'green', 'blue', 'indigo', 'violet']

# 1. Print out a random color.
p colors.sample

# 2. Print out the colorsarray in reverse order.
p colors.reverse()

# 3. Print out all of the colors in the array with all capital letters.
p colors.map(&:upcase)

## Methods

# Write a method named find_areathat finds the area of a rectangle when given values for width and height
def find_area height, width
    height * width
end

p find_area(3,5)
 
#Write a method named multiply_each_by_fivethat will loop over the given numsarray below and print each number multiplied by 5
#nums2 = [5, 5, 6, 7, 2, 4, 3, 2, 1, 9, 7, 6, 0, 0]

# def multiply_each_by_five(nums2) do ### I am struggling with methods a bit, not sure why this one i could not figure out. I tried searching but could not find an example i understood. 
    

# end

## Methods with Hash
# Hashes

book = {
  title: 'The Great Gatsby',
  author: 'F Scott Fitzgerald',
  year: 1925,
  price: 10
}

lamp = {
  type: 'reading',
  brand: 'Ikea',
  price: 25
}

table = {
  type: 'bed side',
  brand: 'Crate & Barrel',
  color: 'birch',
  price: 50
}

# 1. Write a method named print_price that will take in any hash and return the price of the item.

def print_price (book, lamp, table)
    p price
end

print_price(book, lamp, table)


### I am still not able to figure out methods, i am not sure if i am overthinking or am just not understanding. I am turning this in and will need to reach out to get some help. 