class Question
  attr_accessor :answer, :question
  #Allows users to input their numbers for the next question
  def initialize
    puts "Pick 2 numbers to add. One at a time."
    print "First number is:"
    @number1 = STDIN.gets.chomp.to_i
    print "Second number is:"
    @number2 = STDIN.gets.chomp.to_i
    @correct_answer = @number1 + @number2
  end

  #Asks the question with user input numbers
  def ask_question(name)
    puts "#{name}. What is #{@number1} plus #{@number2}?"
  end

  #checks to see if user answer matches actual answer
  def check_answer(answer)
   @correct_answer == answer
  end

end
