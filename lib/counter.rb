class Counter
  attr_reader :count
  attr_reader :update

  def initialize
    @count = 0
    @update = Time.now.strftime("%T")
  end

  def reset
    @count = 0
  end

  def increment
    @count += 1
    @update = Time.now.strftime("%T")
  end

  def decrement
    @count -= 1
    @update = Time.now.strftime("%T")
  end

  def self.instance
    @counter ||= Counter.new
    #  roughly translates to @counter || @counter = Counter.new
  end

end
