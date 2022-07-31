def substrings(stringinput,dictionary)
  stringinput= stringinput.downcase
  hash = Hash.new()
  
  for word in dictionary
    
    helparray = stringinput
    times_found = 0
    if (helparray.include?(word))
      helparray=helparray.split(word)
      if (helparray.length >1 )
        times_found =+ (helparray.length) -1
      elsif (helparray.length==0 and !stringinput.empty?)
        times_found=1
      elsif (helparray.length ==1)
        times_found=1
      end
    end
    if times_found>0
      hash[word]=times_found;
    end
  end
  return hash
end


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts(substrings("Howdy partner, sit down! How's it going?", dictionary))