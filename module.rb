module Toolbox
  module_function

  def log(message, priority = :warn)
    Logger.send(:priority, message)
  end
  
  def format_cc(number)
    number.scan(/\d{4}/).join('-')
  end
  
  def select_random_element(array)
    array[rand(array.length)]
  end
end