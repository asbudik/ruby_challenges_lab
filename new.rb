# # 1.) Write a method called pTimes that takes a statement and a num
# # puts the statement some num of times to the console.

def p_times(statement, num)
  (num).times do
    puts statement
  end
end

p_times("hello", 10)

# # 2.) Write a method called wordCount to count word occurence in a string,
# # returned as a Hash.

def word_count(statement)
  words = {}
  wordsArr = statement.split(" ")

  wordsArr.each do |word_key|
    words[word_key] ||= 0
    words[word_key] += 1
  end
  words
end

statement = gets.chomp
p word_count(statement)

# # 3.) Write a method called mockMe that gets some input from the terminal
# # and puts it until the input is the word quit or q.
# #(Be sure to remove trailing \n.)

def mock_me(response)
  while (response != "quit")
    puts response
    response = gets.chomp
  end
end
response = gets.chomp
mock_me(response)

# 4.) Write a method called printContacts that takes a hash of name and
# phone-number key-value pairs and puts the name with the contact info.

def print_contacts(hash)
  puts "The keys are #{hash.keys} and the values are #{hash.values}"
end
theHash = {:john => "7752534158"}
print_contacts(theHash)

# 5.) Write a method called getContact that
# takes a contacts hash,
# prints the contacts,
# prompts the terminal for a new name and a phone number,
# and then adds the name and phone as a key value pair respectively
# if name is not already a contact.
# The getContact method should return the contacts hash.

def get_contact(hash)
  new_name = gets.chomp
  new_num = gets.chomp
  hash[new_name] = new_num

  hash.each do |key, value|
    puts "The keys are %s and the values are %s" % [key, value]
  end
end
contacts = {:john => "7752534158", :joe => '1234567890', :louis => '0987654321'}
get_contact(contacts)

# Write a method for each exercise below that uses Array#inject:
# 1.) Write a method called getLength to find the length of an array.

def get_length(array)
  return array.inject (0) { |length, el| length + 1 }
end
my_array = [1, 2, 3, 4, 9, 12]
puts get_length(my_array)

# 2.) Write a method called getSum to find the sum of the values in an array.

def get_sum(array)
  return array.inject (0) { |sum, n| sum + n }
end
my_array = [2, 4, 8, 12]
puts get_sum(my_array)

# 3.) Write a method called getMax to find the max of the values in an array.

def get_max(array)
  return array.inject do |current_max, n|
    if (current_max < n)
      n
    else
      current_max
    end
  end
end

my_array = [2, 1, 15, 3, 4]
puts get_max(my_array)

# 4.) Write a method called getMin to find the min of the values in an array.

def get_min(array)
  return array.inject do |current_min, n|
    if (current_min > n)
      n
    else
      current_min
    end
  end
end

my_array = [2, 1, 15, 3, 4]
puts get_min(my_array)

# 5.) Write a method called reverseStr to reverse a string.

def reverse_str(string)
  return string.split("").inject "" do |current_rev_str, current_char|
    current_char + current_rev_str
  end
end

my_string = "adambudik"
puts reverse_str(my_string)


# Challenge: write a method called partialSums that pushes the partial sum
# of an array to a new list
# partialSums([])
# #=> [0]
# partialSums([5])
# #=> [0, 5]
# partialSums([5,6,7])
# #=> [0, 5, 11, 18]

def partial_sums(array)
  new_list = [0]
  array.each_with_index do |num, i|
    new_list.push(num + new_list[0 + i])
  end
  return new_list
end
my_array = [5, 6, 7, 2]
puts partial_sums(my_array)

# Write a method for each exercise below that uses Array#map:

# 1.) Write a method called multiplyBy that takes a number and
# returns an array of numbers multiplied by that number.

def multiply_by(array)
  return array.map { |el| el * 3}
end

my_array = [2, 4, 6, 8]
puts multiply_by(my_array)

# 2.) Write a method called reverseEach that takes an array of words and
# returns an array of reversed words.

def reverse_each(array)
  new_array = []
  array.each do |el|
    new_array.push(el.reverse)
  end
  return new_array
end

my_array = ["panda", "dog", "a", "to", "radical"]
puts reverse_each(my_array)

# 3.) Write method called getResponses that takes an array of questions
#  (strings) and returns an array of responses input from the console
#  for each question. (Hint: you will need to use gets.chomp and puts )

def get_responses(array)
  new_array = []
  array.each do |el|
    puts el
    new_array.push(gets.chomp)
  end
  return new_array.inspect
end

my_array = ["What's up?", "What's your name?", "Where you from?", "Did you have fun?"]

puts get_responses(my_array)


# Write a method to compute the factorial of a number.



# Write a method to check if a number is a palindrome.



# Write a method to reverse a word in-place, do not use iterators,
# use only a while loop and indices.

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

# Write a method to merge to two sorted Arrays.
