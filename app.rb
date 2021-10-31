class Logger
  def initialize
    @f = File.open 'log.txt', 'a'
  end

#class method
  def self.say_something
    puts 'HaHa'    
  end

#instance method
  def log_samething what
    @f.puts what
  end
end

#вызов для class method
Logger.say_something

#вызов для instance method
logger = Logger.new
logger.log_samething 'hay !'