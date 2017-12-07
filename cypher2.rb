def ceaser_cypher(cypher, shift)

alphabet = ('a'..'z').to_a 
numbers = (0...28).to_a 
word = gets.chomp.split('')
shift = 5; #Remember to change this to accept an integer.
i = 0;


word.each do |letter|
 while letter != alphabet[i]
      i+=1
    end
    if letter = alphabet[i]
      letter = (numbers[i] + shift) % alphabet.length
       i = 0
     end
     letter = alphabet[letter]
     puts letter
     end
      word.join('')
   end
  
   
ceaser_cypher("Hello",5)