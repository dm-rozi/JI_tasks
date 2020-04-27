#FizzBuzz 

(1..100).each{|i|
  string = ""
  string += "Fizz" if i % 3 == 0
  string += "Buzz" if i % 5 == 0
  puts "#{i} #{string}"
}

#puts (1..100).map {|i|
#  f = i % 3 == 0 ? 'Fizz' : nil
# b = i % 5 == 0 ? 'Buzz' : nil
# f || b ? "#{ f }#{ b }" : i
# }