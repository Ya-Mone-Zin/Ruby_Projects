dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
def substring(string, dict_array)
  dict_array.reduce(Hash.new(0)) do |result, word|
      if string.downcase.include? word
      result[word] += 1
      end
    result
  end
end
puts substring("below",dictionary)
puts substring("Howdy partner, sit down! How's it going?", dictionary)