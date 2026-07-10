=begin
Write your code for the 'Robot Simulator' exercise in this file. Make the tests in
`robot_simulator_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/robot-simulator` directory.
=end

class Robot
  SIDES = %i(north east south west)

  attr_reader :coordinates

  def initialize
    @x, @y = 0, 0
  end

  def at(x, y)
    @x, @y = x, y
  end

  def orient(side)
    raise ArgumentError unless SIDES.include?(side)

    @side = side
  end

  def turn_right
    current_index = SIDES.index(@side)
    new_index = current_index + 1
    new_index = 0 if SIDES[new_index].nil?

    @side = SIDES[new_index]
  end

  def turn_left
    current_index = SIDES.index(@side)
    new_index = current_index - 1
    new_index = -1 if SIDES[new_index].nil?

    @side = SIDES[new_index]
  end

  def advance
    if @side == :north
      @y += 1
    elsif @side == :east
      @x += 1
    elsif @side == :south
      @y -= 1
    elsif @side == :west
      @x -= 1
    end
  end

  def coordinates
    [@x, @y]
  end

  def bearing
    @side
  end
end


class Simulator
  def initialize
    @robots = {}
  end

  def instructions(instructions)
    instructions.chars.map {|key| instruction(key) }
  end

  def instruction(key)
    case key
    when "L"
      :turn_left
    when "R"
      :turn_right
    when "A"
      :advance
    else
      nil
    end
  end

  def place(robot, x:, y:, direction:)
    @robots[robot] = { at: [x,y], orient: direction }
  end

  def evaluate(robot, instructions)
    options = @robots[robot]
    robot.at(*options[:at])
    robot.orient(options[:orient])
    instructions(instructions).each do |instruction|
      robot.send(instruction)
    end
  end
end
