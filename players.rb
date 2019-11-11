class Player
  attr_accessor :name, :score

  def initialize(name)
    @name = name
    @score = 3
  end

  def wrong_answer
    @score -= 1
  end

  def lose
    @score == 0
  end

  def new_question
   new_question = Question.new
   new_question.ask_question(name)
   print '> '
    @choice = STDIN.gets.chomp
    if new_question.check_answer(@choice.to_i)
      puts "Yes! You got it!"
    else
      puts "Back to the drawing board with you..."
      wrong_answer
    end
  end
end
