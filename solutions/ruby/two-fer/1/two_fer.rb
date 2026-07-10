=begin
Write your code for the 'Two Fer' exercise in this file. Make the tests in
`two_fer_test.rb` pass.
=end


module TwoFer
  def self.two_fer(target = nil)
    if target
      "One for #{target}, one for me."
    else
      'One for you, one for me.'
    end
  end
end