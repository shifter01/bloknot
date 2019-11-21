require "date"

class Tasks < Post
  def initialize
    super
    @due_date = Time.now
  end

  def read
    puts "Задача?"
    @text = STDIN.gets.chomp
    puts "Конечный срок исполнения?"
    input = STDIN.gets.chomp
    @due_date = Date.parse(input)
  end

  def to_strings
    time_string = "Создано: #{@time.strftime("%Y-%m-%d__%H:%M:%S")} \n\r \n\r"
    deadline = "Срок исполнения: #{@due_date}"
    return [deadline, @text, time_string]
  end
end