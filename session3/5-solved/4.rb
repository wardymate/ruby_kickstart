def first_pos(str)
  to_return = {}
  str.split.each_with_index do |word, index|
    to_return[word] ||= index
  end
  to_return
end

#=========================
#paul fitz & meads

def first_pos(string)
	answer = Hash.new

	array = string.split(' ')

	array.each do |x|
	 answer[x] = array.index(x)
  end
  answer
end

#Sebastien
def first_pos(string)
	to_return = {}
  string.split.each_with_index do |word, index|
    to_return[word] ||= index
  end
  to_return
end

#Yannick
def first_pos string
  answer = {}
  array = string.split
  array.each{|word| answer[word] = array.index (word) } 
  answer    
end


# Tom Coakes
def first_pos(string)
  hash = Hash.new
  array = string.split(' ')
  array.each { |word| hash[word] = array.index(word) }
  return hash
end

#Chris Ward

def first_pos(input_string)
  output = {}
  array = input_string.split(" ")
  array.each_with_index do |word,index|
    if output.has_key?(word)
    else
    output[word] = index
    end
  end
output
end
