alphabet = ('a'...'z').to_a 
numbers = (0...27).to_a 
inputString = gets.chomp.split('')
shift = 5; #Remember to change this to accept an integer.
i = 0;
#j = 0;

=begin alphabet.each do |letNum|
  letNum = numbers[i]
  i += 1 
  #puts letNum
end

inputString.each do |letter|
  if letter = alphabet[j]
    letter = alphabet[j]
  end
    j+= 1
    #puts letter[j]
end
=end

=begin inputString.each do |letter|
 alphabet.each do |letNum|
    letNum = numbers[i]
      i+=1
      #puts letNum
    end
    if letter = alphabet[i]
      letter = numbers[i]
       #puts letter
      #else puts "Not working"
     end
  end
=end

inputString.each do |letter|
 while letter != alphabet[i]
    #letNum = numbers[i]
      i+=1
      #puts letNum
    end
    if letter = alphabet[i]
      if numbers[i] + shift <= alphabet.length
        letter = numbers[i] + shift
      else if numbers[i] #how to get it to flip over?
       i = 0
      puts letter
      else puts "Not working"
     end
  end


inputString.each do |letter|
 while letter != alphabet[i]
    #letNum = numbers[i]
      i+=1
      #puts letNum
    end
    if letter = alphabet[i]
      if numbers[i] + shift > alphabet.length #how to get it to flip over?
        letter = (numbers[i]+shift) - alphabet.length
      else if numbers[i] + shift < 0 
        letter = alphabet.length - numbers[i] + shift
    else letter = numbers[i] + shift
       i = 0
     end
       puts letter
     end
  end
end
  

  
  #puts inputString




#PROJECT 2

  #Implement a method #stock_picker that takes in an array of stock prices, one for each hypothetical day. It should return a pair of days representing the best day to buy and the best day to sell. Days start at 0.

  > stock_picker([17,3,6,9,15,8,6,1,10])
  => [1,4]  # for a profit of $15 - $3 == $12



=begin Quick Tips:

You need to buy before you can sell
Pay attention to edge cases like when the lowest day is the last day or the highest day is the first day.
=end



#PROJECT 3

# implement a method #substrings that takes a word as the first argument and then an array of valid substrings (your dictionary) as the second argument. It should return a hash listing each substring (case insensitive) that was found in the original string and how many times it was found.
#so I think I'm trying to use this method to solve the first problem...
  
  > dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
  => ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
  > substrings("below", dictionary)
  => { "below" => 1, "low" => 1 }
Next, make sure your method can handle multiple words:

  > substrings("Howdy partner, sit down! How's it going?", dictionary)
  => { "down" => 1, "how" => 2, "howdy" => 1,"go" => 1, "going" => 1, "it" => 2, "i" => 3, "own" => 1,"part" => 1,"partner" => 1,"sit" => 1 }
Quick Tips:

Recall how to turn strings into arrays and arrays into strings.