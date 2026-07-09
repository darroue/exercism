=begin
Write your code for the 'Raindrops' exercise in this file. Make the tests in
`raindrops_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/raindrops` directory.
=end
module Raindrops
  def self.convert(value)
      array = []
     array << "Pling" if value % 3 == 0
     array << "Plang" if value % 5 == 0
     array << "Plong" if value % 7 == 0

    return array.join if array.any?

    value.to_s
  end
end