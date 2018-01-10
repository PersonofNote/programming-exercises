=begin
#One way to do it, without File's built-in methods
text = ''
line_count = 0
File.open("text.txt").each do |line|
	line_count += 1
	text << line
end
puts line_count

=end

lines = File.readlines("text.txt")
line_count = lines.size
text = lines.join
total_characters = text.length
total_characters_nospace = text.gsub(/\s+/, '').length
word_count = text.split.length
paragraph_count = text.split(/\n\n/).length
sentence_count = text.split(/\.|\?|!/).length

puts "#{line_count} lines"
puts "#{total_characters} total characters"
puts "#{total_characters_nospace} characters excluding spaces"
puts "#{words} words"
puts "#{paragraph_count} paragraphs"
puts "#{sentence_count} sentences"
puts "#{sentence_count/paragraph_count} sentences in a paragraph (averaged)"
puts "#{word_count/sentence_count} worsd in a sentence (averaged)"