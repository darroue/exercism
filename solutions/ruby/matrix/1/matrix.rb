=begin
Write your code for the 'Matrix' exercise in this file. Make the tests in
`matrix_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/matrix` directory.
=end


class Matrix
  def initialize(value)
    @value = value
    @rows = value.split("\n").map(&:split)
  end

  def row(row_index)
    @rows[row_index - 1].map(&:to_i)
  end

  def column(col_index)
    @rows.flat_map do |row|
      row[col_index - 1].to_i
    end
  end
end
