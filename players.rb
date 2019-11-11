class Player
  attr_accessor :name, :score


  #sets player name and score
  def initialize(name)
    @name = name
    @score = 3
  end

  #Lowers player score when wrong answer supplied
  def wrong_answer
    @score -= 1
  end
  #Triggers game over when score is 0
  def lose
    @score == 0
  end
  
  #Creates new Question using the Ask_Question format
  def new_question
   new_question = Question.new
   new_question.ask_question(name)
   #awaits user answer
   print 'Answer: '
    @choice = STDIN.gets.chomp
    #performs validation on answer
    if new_question.check_answer(@choice.to_i)
      puts "Yes! You got it!"
    else
      puts "Back to the drawing board with you..."
      wrong_answer
    end
  end
end
