class String
  def /(path)
    File.join(self, path)
  end

  def camel_case
    gsub(' ', '_').gsub(/(?:^|_)(.)/) { $1.upcase }
  end

  def snake_case
    sub(/\W+/, "_").gsub('-', '_').gsub('.', '_').downcase
  end
end

if defined?(Test::Unit::TestCase)
  class Test::Unit::TestCase
    def self.should(name, &block)
      define_method("test_#{name.snake_case}", &block)
    end
  end
end

class Dir
  def self.here
    File.dirname(caller[0].split(':').first)
  end

  def self.up(dir_count = 1)
    path = File.dirname(caller[0].split(':').first)
    dir_count.times { path = path / '..' }
    path
  end
end
