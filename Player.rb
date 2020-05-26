class Player
  attr_accessor :lives, :name
   
  def initialize(name)
    @lives = 3
    @name = name
  end
    
  def dead? 
    @lives <= 0
  end

  def take_damage
    @lives -= 1
  end

  def print_lives
    puts "#{name} #{@lives}/3 lives left"
  end
end



