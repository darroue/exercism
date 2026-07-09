=begin
Write your code for the 'Hamming' exercise in this file. Make the tests in
`hamming_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/hamming` directory.
=end
module Hamming

  
  def self.compute(a, b)
    n = 0
    return 0 if a == b
    raise ArgumentError if a.length != b.length
    
    a.chars.each_with_index do |char, index|
      n += 1 if b[index] != char
    end
    
    n
  end
end
