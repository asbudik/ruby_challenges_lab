# Intro to Ruby Lab
# For this lab, we'd like you to complete a few challenges to reinforce your
# knowledge of integers, strings, arrays and booleans as well as iterators.

# Challenge 1 - Temperature Converter

# Create a simple temperature convertor. It should function like the example below:

# Type '1' to convert from Celsius to Fahrenheit OR type '2' to convert from Fahrenheit to Celsius
# 1
# Enter Celsius Temperature:
# 24
# 24 degrees Celsius is equal to 75.2 degrees Fahrenheit



def temp_converter(res)
  f = ((res - 32) * 5) / 9
  c = ((res * 9) / 5) + 32

  puts "Convert temperature. 1 for F, 2 for C."
  response = gets.chomp.to_i
  if (response == 1)
    puts f
  elsif (response == 2)
    puts c
  else puts "1 or 2, please"
  end
end
get = gets.chomp.to_f
temp_converter(get)


# Challenge 2 - Calculator

# Create a simple calculator that first asks the user what method they would
# like to use (addition, subtraction, multiplication, division) and then asks
# the user for two numbers, returning the result of the method with the two numbers.
#  Here is a sample prompt:

# What calculation would you like to do? (add, sub, mult, div)
# add
# What is number 1?
# 3
# What is number 2?
# 6
# Your result is 9

def calculator()
  puts "What would you like to do?"
  res = gets.chomp
  puts "First number"
  first = gets.chomp.to_f
  puts "Second number"
  second = gets.chomp.to_f
  if res == "add"
    first += second
  elsif res == "sub"
    first -= second
  elsif res == "mult"
    first *= second
  elsif res == "div"
    first /= second
  else "Please provide correct"
  end
  puts "Your result is %s" % first
end
calculator()

# Challenge 3 - Reverse a string

# Reverse a string in place. In other words, do not create a new string or use
# other methods on the string such as reverse. The goal of the problem is to use
# a loop and the string accessors to figure out which values to swap for other values.
# Below is the output.

# Enter a string:
# reverse_me
# em_esrever

def reverse()
  puts "Enter a string"
  string = gets.chomp
  half = string.length / 2
  half.times do |char|
    string[char], string[-char-1] = string[-char-1], string[char]
    puts string
  end
end
reverse()


# Challenge 4 - Bank Transactions

# Create a prompt that asks the user if they would like to display their balance,
 # withdraw or deposit. Write three methods to perform these calculations and
 # output the result to the user. Here is a sample output:

# Your current balance is
# 4000
# What would you like to do? (deposit, withdraw, check_balance)
# deposit
# How much would you like to deposit?
# 1000
# Your current balance is 5000
# Are you done?
# yes
# Thank you!


def bank()
  @balance = 4000

  def withdraw()
    puts "How much would you like to withdraw?"
    @balance -= gets.chomp.to_i
    puts "Your current balance is %s" % @balance
    puts "Are you done?"
    response = gets.chomp
    if response == 'yes'
      abort('Goodbye')
    elsif response == 'no'
      check_balance()
    else ("Yes or no, please")
    end
  end

  def deposit()
    puts "How much would you like to deposit?"
    @balance += gets.chomp.to_i
    puts "Your current balance is %s" % @balance
    puts "Are you done?"
    response = gets.chomp
    if response == 'yes'
      abort('Goodbye')
    elsif response == 'no'
      check_balance()
    else ("Yes or no, please")
    end
  end
  def check_balance()
    puts "Your current balance is %s" % @balance
    puts "What would you like to do? balance, deposit, or withdraw?"
    response = gets.chomp.downcase
    if response == "balance"
      check_balance()
    elsif response == "deposit"
      deposit()
    elsif response == "withdraw"
      withdraw()
    else "Please specify balance, deposit, or withdraw"
    end
  end
  check_balance()
end
bank()

# Challenge 5 - Guessing Game

# Create a program that asks the user to guess a number between 1 and 100.
# Once the user guesses a number, the program should say, higher, lower, or
# tell the user that he got the number correct. The user should continue to
# make guesses until he guesses correctly. Also, once the user guesses correctly,
# the program should print the number of guesses needed to arrive at the correct
# answer. Below is sample output:

# Guess a number between 1 and 100
# 50
# The number is lower than 50.  Guess again
# 25
# The number is lower than 25.  Guess again
# 13
# The number is higher than 13.  Guess again
# 20
# The number is lower than 20.  Guess again
# 17
# The number is higher than 17.  Guess again
# 18
# The number is higher than 18.  Guess again
# 19
# You got it in 7 tries



def guess()
  num = rand(1..100)
  count = 0
  puts "Guess between 1 and 100"

  while ((response = gets.chomp.to_i) != num)
    if (num > response)
      puts "The number is higher than %s" % response
      count += 1
    else
      puts "The number is lower than %s" % response
      count += 1
    end
  end
  puts "Congratulations! The number was %s" % num
  puts "You got it in %s tries" % count
end

guess()

# Bonus Challenge - Class List

# Create an array of students and allow the user to keep adding new students
 # to the array. After each student is added, display the array to the user
 # (use the inspect method to display the array). If the user deciders to not
 # add an additional student, display the list of the students and the index
 # that each student is at (check out .each_with_index) Here is a sample prompt:

# Would you like to add another student?
# yes
# What is the student's name?
# Taco
# The array of instructors now looks like: ["Taco"]
# Would you like to add another student?
# no
# Here is a summary of your student array:
# The student at index 0 is Taco


def class_list(array)
  puts "Would you like to add another student?"

  puts array.inspect
  while ((response = gets.chomp) != "no")
    array.push(response)
    puts array.inspect
    puts "Would you like to add another student?"
  end
  array.each_with_index do |val, i|
    puts "The student at index %s is %s" % [i, val]
  end

end
array = ["john", "will", "samantha"]

class_list(array)


