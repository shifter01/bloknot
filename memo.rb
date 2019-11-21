class Memo < Post
  def read
    puts "Новая заметка, остановить запись на \"end\""
    lines = nil
    @text = []

    while lines != "end" do
      lines = STDIN.gets.chomp
      @text << lines
    end
  end

  def to_strings
    time_string = "Создано: #{@time.strftime("%Y-%m-%d__%H:%M:%S")} \n\r \n\r"
    return
    @text.unshift(time_string)
  end
end