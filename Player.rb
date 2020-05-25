class Person
  attr_accessor :lives
  def initialize
    @lives = 3
  end
    
  def is_dead? 
    alive true;
  end

  def take_damage
    lives -= 1
  end

  def print_lives
    puts lives
  end
end


