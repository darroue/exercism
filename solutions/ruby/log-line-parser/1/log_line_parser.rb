class LogLineParser
  def initialize(line)
    @line = line
    @error_level, @message = @line.split(":")
  end

  def message
    @message.strip
  end

  def log_level
    @error_level.match(/[A-Z]+/).to_s.downcase
  end

  def reformat
    "#{message} (#{log_level})"
  end
end
