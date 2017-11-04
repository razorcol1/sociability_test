class Test
  attr_reader :user_points
  attr_accessor :questions

  def initialize
    @user_points = 0
    @current_question = 0
  end

  def next_question
    for item in @questions do
      puts item
      puts " а) Да; \n б) Нет. \n в) Иногда."
      user_input = nil
      until user_input == "да" || user_input == "нет" || user_input == "иногда"
        puts "введи 'Да','Нет' или 'Иногда' :"
        user_input = STDIN.gets.chomp.downcase.to_s
      end
      if user_input == "да"
        @user_points += 2
      elsif user_input == "иногда"
        @user_points += 1
      end

      @current_question += 1
    end
  end

  def done?
    @current_question >= @questions.size
  end
end


