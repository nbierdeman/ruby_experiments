# outputs character frequencies of a string
def char_counter(string)
  freqs = Hash.new(0)
  string.downcase.chars.sort.join.each_char { |char| freqs[char] += 1 }
  freqs.each { |char, count| puts "#{char}: #{count}" }
end
char_counter("Hello World!")
