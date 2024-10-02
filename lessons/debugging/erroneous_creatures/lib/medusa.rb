class Medusa

  attr_reader :name
  attr_accessor :statues

  def initialize(name)
    @name = name
    @statues = []
  end

  def stare(x)
    # require 'pry'; binding.pry
    x.stone = true
    @statues.push(x.name)
  end

  def statues
    # require 'pry'; binding.pry
    @statues
  end

end

class Person

  attr_reader :name
  attr_accessor :stone

  def initialize(name)
    @name = name
    @stone = false
  end

  def stoned?
    @stone
  end

end
