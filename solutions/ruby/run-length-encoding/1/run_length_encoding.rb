module RunLengthEncoding
  MATCH = /([a-zA-Z\s])/

  def self.encode(input)
    input.gsub(/#{MATCH}\1+/) { |match| "#{match.length}#{match[0]}" }
  end

  def self.decode(input)
    input.gsub(/(\d+)#{MATCH}/) { |match| match[-1] * match[..-2].to_i }
  end
end
