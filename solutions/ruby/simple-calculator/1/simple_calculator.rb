class SimpleCalculator
  class UnsupportedOperation < StandardError; end
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze

  def self.calculate(first_operand, second_operand, operation)
    raise ArgumentError unless first_operand.is_a?(Integer) && second_operand.is_a?(Integer)
    
    result = case operation
    when '+'
      first_operand + second_operand
        when '*'
      first_operand * second_operand
          when '/'
      first_operand / second_operand
    else
      raise UnsupportedOperation
    end

    "#{first_operand} #{operation} #{second_operand} = #{result}"
  rescue ZeroDivisionError
    "Division by zero is not allowed."
  end
end
