# this method outputs character frequencies of a string

def char_counter(string)
  freqs = {}
  freqs.default = 0
  string.downcase!
  string.each_char { |char| freqs[char] += 1 }
  freqs.sort.each { |char, count| puts "#{char}: #{count}" }
end

=begin
text = "Keekees are my favorite people!"
char_count(text)
=>
: 4
!: 1
a: 2
e: 8
f: 1
i: 1
k: 2
l: 1
m: 1
o: 2
p: 2
r: 2
s: 1
t: 1
v: 1
y: 1
=end
