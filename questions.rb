class Question
  attr_accessor :answer, :question
  def initialize
    @number1 = STDIN.gets.chomp
    @number2 = STDIN.gets.chomp
  end

  def ask_question(name)
   
    puts "#{name}. What is #{@number1} plus #{@number2}?"
    @correct_answer = @number1 + @number2
  end

  def answer
    @answer = gets.chomp.to_i
  end

  def check_answer(answer)
    @answer == @correct_answer
  end

end
