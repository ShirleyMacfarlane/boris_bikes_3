class Bike
  attr_reader :working
  def initialize
    @working = true
  end
 def working?
    return @working
 end
  def report
      @working = false
  end
end