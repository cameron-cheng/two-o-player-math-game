class MathQuestion
  attr_accessor :random_num, :answer
  def initialize
    @random_num = [rand(1..20), rand(1..20)]
    @answer = @random_num[0] + @random_num[1] 
  end 

  def print_question(name) 
    puts "#{name}: What does #{@random_num[0]} plus #{@random_num[1]} equal?"
    input = gets.chomp
  end

  def check_answer(input) 
    input == @answer
  end

end
