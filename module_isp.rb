module Toolbox
  module Logger
    module_function

    def log(message, priority = :warn)
      Logger.send(:priority, message)
    end
  end
  
  module CreditCard
    module_function

    def format_cc(number)
      number.scan(/\d{4}/).join('-')
    end
  end
  
  module CoreExt
    module_function

    module Array
      def select_random_element(array)
        array[rand(array.length)]
      end
    end
  end
end