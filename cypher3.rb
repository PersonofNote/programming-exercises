puts "Secrets! Put in a message and I'll encode it for you."
message = gets.chomp
puts "Input a (whole) number for me to use."
shift = gets.chomp.to_i

def ceasar_cypher(message,shift)
letters = message.split('')
letters.each do |lett|
  num = lett.ord
    if num.between?(97,122)
      num = (num + shift)
      if num > 122
        num = (num - 122) + 96
        elsif num < 97
          num = (num + 122) - 96
      end
    end
    if num.between?(65,91)
         num = (num + shift)
      if num > 91
        num = (num - 91) + 65
        elsif num < 65
          num = (num + 91) - 65
      end
    end
    puts num.chr
end
end



ceasar_cypher(message,shift)
