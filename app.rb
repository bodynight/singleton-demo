require './logger'

#вызов для class method
Logger.instance.log_samething 'blabla!!!'

# вызов для instance method
# не будет работать после добавления private_class_method :new
#     logger = Logger.new
#     logger.log_samething 'hay !'