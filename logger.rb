class Logger
  def initialize
    @f = File.open 'log.txt', 'a'
  end

  @@x = Logger.new
  def self.instance # instance произвольное имя но принято так обозначать singleton
    return @@x
  end

#class method
  # def self.say_something
  #   puts 'HaHa'    
  # end

#instance method
  def log_samething what
    @f.puts what
  end

  private_class_method :new
end
