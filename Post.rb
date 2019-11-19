class Post
  def initialize
    @time = Time.now
    @text = nil
  end
  def read

  end
  def to_strings

  end
  def save
    file = File.new(file_path, "w:UTF-8")
    for item in to_strings do
      file.puts(item)
    end
    file.close
  end
  def file_path
    current_path = File.dirname(__FILE__)
    file_name =@time.strftime("#{self.class.name}_%Y-%m-%d_%H-%M-%S.txt")
    return current_path + "/" + file_name
  end
end