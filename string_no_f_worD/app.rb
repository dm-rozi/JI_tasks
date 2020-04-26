# Change str: no "f"-words, last letter is capitalized. Output - string
# 1. split  (to [])
# 2. filter (no words start from "f")
# 3. reverse
# 4. capitalize (last letter in each word)
# 4. reverse
# 5. join


str = "one, two, three, four, five, six, seven"


#result = str.split(/, /).select{|el| !el.start_with?("f")}.map{|el| el.reverse}.map(&:capitalize).map(&:reverse).join(", ")

result = str.split(', ').select{|el| el[0]!='f'}.each{|el| el[-1] = el[-1].upcase}.join(', ')

puts "String to modify: #{str}"
puts "Result string: #{result}"