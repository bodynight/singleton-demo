class Logger
  def initialize
    @f = File.open 'log.txt', 'a'
  end

  @@x = nil
  def self.instance
    if @@x == nil
      @@x = Logger.new
    end
    return @@x
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
Logger.instance.log_samething 'blabla'
Logger.instance.log_samething 'blabla2'

#вызов для instance method
logger = Logger.new
logger.log_samething 'hay !'