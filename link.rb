class Link < Post
  def initialize
    super
    @url = ''
  end

  def read
    puts "Адрес ссылки"
    @url = STDIN.gets.chomp
    puts "Имя ссылки"
    @text = STDIN.gets.chomp

  end
  def to_strings
    time_string = "Создано: #{@time.strftime("%Y-%m-%d__%H:%M:%S")} \n\r \n\r"
    return [@url, @text, time_string]
  end
end