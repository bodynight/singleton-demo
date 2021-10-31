require 'singleton'

class Logger
  include Singleton

  def initialize
    @f = File.open 'log.txt', 'a'
  end

  def log_samething what
    @f.puts what
    @f.flush # все изменения будут сброшены надиск
  end
end
