require 'pry'

## Question 1: `#sort_array_asc`
def sort_array_asc(array)
  array.sort
  #binding.pry
end

## Question 2: `#sort_array_desc`
def sort_array_desc(array)
  array.sort do |a, b|
    b <=> a
  end
  #binding.pry
end

## Question 3: `#sort_array_char_count`
def sort_array_char_count(strings)
  strings.sort do |left, right|
    left.length <=> right.length
  end
  #binding.pry
end

## Question 4: `#swap_elements`
def swap_elements(array)
  array[1], array[2] = array[2], array[1]
  array
  #binding.pry
end

def swap_elements_from_to(array, index, destination_index)
  array[index], array[destination_index] = array[destination_index], array[index]
  array
  #binding.pry
end

## Question 5: `#reverse_array`
def reverse_array(array)
  array.reverse
  #binding.pry
end

## Question 6: `#kesha_maker`
def kesha_maker(strings)
  new_strings = []
  strings.each do |string|
    string[2] = "$"
    new_strings << string
    #binding.pry
  end
  new_strings
end

## Question 7: `#find_a`
def find_a(strings)
  strings.find_all do |string|
    string.start_with?("a")
  end
end

## Question 8: `#sum_array`
def sum_array(array)
    #sum = 0
    #array.each do |num|
    #  sum += num.to_i
    #end
    #sum

    array.inject do |sum, number|
      sum + number
    end

    #array.inject(:+)
end

## Question 9: `#add_s`
def add_s(array)
  array.collect.with_index do |word, index|
    index != 1 ? word << "s" : word
  end
  #binding.pry
end

#array = [7, 3, 1, 2, 6, 5, 9, 8, 4]
#strings = ["short", "minuscule", "abit", "tally", "tiny", "big", "biggest", "apple", "bigger"]
#sort_array_asc(array)
#sort_array_desc(array)
#sort_array_char_count(strings)
#swap_elements(array)
#swap_elements_from_to(array, 3, 6)
#reverse_array(array)
#kesha_maker(strings)
#find_a(strings)
#sum_array(array)
#add_s(strings)
