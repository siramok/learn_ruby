class Timer
  attr_accessor :seconds
  def initialize
    @seconds = 0
    @minutes = 0
    @hours   = 0
  end
  def seconds=(new_sec)
    if new_sec >= 3600
      @hours = new_sec / 3600
      new_sec -= @hours * 3600
    end
    if new_sec >= 60
      @minutes = new_sec / 60
      new_sec -= @minutes * 60
    end
    @seconds = new_sec
  end
  def padded(time)
    format('%02d', time)
  end
  def time_string
    "#{padded(@hours)}:#{padded(@minutes)}:#{padded(@seconds)}"
  end
end
