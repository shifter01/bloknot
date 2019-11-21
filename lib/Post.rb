class Post
  def self.post_types
    [Memo, Link, Tasks]
  end

  def self.create(type_index)
    return post_types[type_index].new
  end

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
    to_strings.pop
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