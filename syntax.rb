puts '[Literals - Boolean]'
puts true
puts false

puts '[Literals - Nil]'
puts nil

puts '[Literals - Numeric]'
puts 1234
puts 1_234
puts 0d1234
puts 0xff
puts 07
puts 0o7
puts 0b1111
puts 1.234
puts 1r
puts 1/3r
puts 1.2r
puts 1i
puts 1 + 1i

puts '[Literals - String]'
puts 'text'
puts "text #{1 + 2}"
puts ?a
puts ?\u{41}
puts ?\C-a # Emacs Control modifier
puts ?\ca # Working (same as ?\C-a)
puts ?\M-a
# puts ?\ma # Not working
puts `echo hello from shell` # shell

puts '[Literals - Here Document]'
puts <<HEREDOC
  line1: 'text' # any text can be here
  line2: "text"
  line3: ?a
  line4: #{1 + 2}
HEREDOC
puts <<'HEREDOC'
  line1: 'text' # any text can be here
  line2: "text"
  line3: ?a
  line4: #{1 + 2}
HEREDOC
puts <<-MY_TAG
  anything
MY_TAG
puts <<~MY_TAG
  anything
MY_TAG
puts <<-ONE, <<-TWO
  text1
ONE
  text2
TWO
puts <<-`MY_TAG`
echo this is #{__FILE__}
MY_TAG

puts '[Literals - Symbol]'
puts :my_symbol
puts :"my symbol"
puts :"my symbol #{1 + 2}"
puts :'my symbol #{1 + 2}'

puts '[Literals - Array]'
puts []
puts [1]
puts [1, 2]

puts '[Literals - Hash]'
puts ({a: 1, b: 2, "u v": 3})
puts a: 1, b: 2, "u v": 3
puts :a => 1, :b => 2, :"u v" => 3

puts '[Literals - Range]'
puts (1..2)
puts (1...2)
puts (1..)
puts (..1)

puts '[Literals - Regexp]'
puts /foo/
puts /foo/m
puts /foo/mi
puts /foo/mix

puts '[Literals - Lambda Proc]'
puts -> { 1 + 1 }
puts ->(a) { 1 + a }
puts lambda { 1 + 1 }
puts lambda { |v| 1 + v }
puts -> do 1 + 1 end
puts ->(a) do 1 + a end
# wrong: puts lambda do 1 + 1 end
puts (lambda do 1 + 1 end)
# wrong: puts lambda do |v| 1 + v end
puts (lambda do |v| 1 + v end)
