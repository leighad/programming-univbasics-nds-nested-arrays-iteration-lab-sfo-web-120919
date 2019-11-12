def join_ingredients(src)
  # Given an Array of 2-element Arrays ( [ [food1, food2], [food3, # food4]....[foodN, foodM]]):
  #
  # Build a new Array that contains strings where each pair of foods is
  # inserted into this template:
  #
  # "I love (inner array element 0) and (inner array element 1) on my pizza"
  # As such, there should be a new String for each inner array, or pair
  row_index = 0 
  new_array = []
  while row_index < src.count do 
    element_index = 0 
    while element_index < src[row_index].count do 
      elem1 = src[row_index][0]
      elem2 = src[row_index][1]
      element_index += 1 
    end
    new_array << "I love #{elem1} and #{elem2} on my pizza"
    row_index += 1 
  end
new_array
end

def find_greater_pair(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # Produce a new Array that contains the larger number of each of the pairs
  # that are in the inner Arrays
  
  row_index = 0 
  new_array = []
  while row_index < src.count do
    element_index = 0
    while element_index < src[row_index].count do
      if src[row_index][0] > src[row_index][1]
        max = src[row_index][0]
      else
        max = src[row_index][1]
      end
    element_index += 1
    end
  new_array << max
  row_index += 1
  end
new_array
end

def total_even_pairs(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # if both numbers in the pair are even, then add both those numbers to the
  # total
  #
  # As a reminder any number % 2 will return 0 or 1. If the result is 0, then
  # the number was even. Review the operator documentation if you've forgotten this!
  
#   row_index = 0 
#   new_array = []
#   while row_index < src.count do 
#     element_index = 0 
#     while element_index < src[row_index].count do 
#       total = 0
#       if src[row_index][0] % 2 == 0
#         total = src[row_index][0]
#       end
#       if src[row_index][1] % 2 == 0
#         new_total = total + src[row_index][1]
#       end
#       new_array << new_total
#       element_index += 1
#     end
#     row_index += 1
#     # new_array.length.times { |num| sum += num}
#   end 
# new_total

  # row_index = 0 
  # outer_array = []
  # while row_index < src.count do 
  #   element_index = 0
  #   inner_array = []
  #   while element_index < src[row_index].count do 
  #     if src[row_index][0] % 2 == 0 && src[row_index][1] % 2 == 0
  #       inner_array << src[row_index][element_index]
  #     end
  #   element_index += 1 
  #   end
  #   outer_array << inner_array
  #   row_index += 1
  # puts outer_array
  # end
  # # sum = 0
  # # new_array.each { |num| sum += num }
  # # sum 
 
  row_index = 0 
  sum = 0 
  # new_array = []
  total = 0 
  while row_index < src.count do
    element_index = 0
    while element_index < src[row_index].count do
      if src[row_index][0] % 2 == 0 && src[row_index][1] % 2 == 0 
        sum = src[row_index][0] + src[row_index][1]
      else sum = 0 
      end
    element_index += 1
    end
  # new_array << sum 
  row_index += 1
  total += sum
  #   puts new_array
  # total = new_array.each { |num| sum += num }
  end
total 
end
