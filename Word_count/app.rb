# Count frequency all words in text-file. Output from max to min.
input = File.open "text.txt","r"
@hh = {}

def add_to_hash word
  # Check empty words
  if !word.empty?   
    word.downcase!
    count = @hh[word].to_i
    count+=1
    @hh[word] = count
  end
end

input.each_line do |line|
	# Split by symbols "space,.:()?\n" 
  puts line
  arr_word = line.split(/\s|,|\.|\n|\(|\)|;/)
  # Each word in array check and add to hash with value (counter).
  arr_word.each {|word| add_to_hash (word)}   
end
input.close

# sort from max to min and output
#@hh.sort_by{|k,v| v}.reverse.to_h

@hh.sort_by(&:last).reverse.to_h.each {|key, value| puts "#{value}:#{key}"}


#========================================================================================
#Examle with array
#arr = ['B','Sd','Some','DooR','Sd','Silk','sdf','','','Ed','','deR','Sd']
#hh = {}
#arr.each do |el|
#  if !el.empty?  #check empty elements
#    el.downcase!  #downcase all letters
#    count = hh[el].to_i    # 1 step: check key "b" in hash, no key "b", count = nill.to_i = 0;  5 step: key "sd" exsists {'sd' => 1}, count = 1
#    count+=1 				# count = 0 + 1 = 1
#    hh[el]= count  		# make record to hash {"b" => 1} and reapeat for next el.
#  end
#end
#puts hh.inspect