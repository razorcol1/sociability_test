require_relative "lib/test"
require_relative "lib/result_printer"

username = ARGV[0]

if username.nil? then username = "Незнакомец" end

if File.exist?("./data/answers.txt" && "./data/questions.txt")
  answers = File.readlines("./data/answers.txt")
  QUESTIONS = File.readlines("./data/questions.txt")
else
  puts "file/files not found"
end

puts "Здравствуйте #{username} \n Инструкции \n За каждый ответ «Да» вы получите 2 балла, за ответ «Нет» — 0 баллов, за ответ «Иногда» — 1 балл. \n Затем програмка посчитает ваши балы и вы узнаете ответ :)"

test = Test.new
result_printer = ResultPrinter.new
test.questions = QUESTIONS

until test.done?
  test.next_question
end

result_printer.print_result(test.user_points, answers)