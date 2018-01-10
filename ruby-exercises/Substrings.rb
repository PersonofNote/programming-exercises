dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

#for single word 

def substrings(text,dictionary)
  frequencies = Hash.new(0)
    if dictionary.join(',').include? text 
    frequencies[text] += 1
    puts frequencies.to_s
  end
 end
 
   substrings("it", dictionary)

#for phrase
   dictionary = ["below", "down ", "go","going ","horn","how","howdy","it ","i","low","own","part","partner","sit"]

def substrings(text,dictionary)
  frequencies = Hash.new(0)
  search = text.split(' ')
  search.each do |word|
    if dictionary.join(',').include? word 
    frequencies[word] += 1
    puts frequencies.to_s
  end
 end
 end
 
    
   substrings("it is a pleasure and it is fun", dictionary)




=begin

*NOTES*

You need to check each word against a dictionary of words. So, using "include?" probably? Look for it within the dictionary. 
Then increment that value +1. Like the histogram. In this case you'd give each word a value of 0, and increment that each time it is found. 
If the word is not found, next. (Or just do nothing.) And push it to a new hash, right? Because the original dictionary doesn't have a key/value relationship, it's an array.

=end