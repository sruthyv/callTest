class CallCheck  
    def method_missing(m, *args, &block)  
      puts "invalid number #{args}"
      @numberInvalid=args 
    end 
    def numberValid(number)
      puts "#{number} is valid"
      @aNumber=number
    end 
    def returnNumber
        return @numberInvalid
    end
    def returnNumberValid
        return @aNumber
    end
end  

CallCheck.new.anything(4325287858985)
CallCheck.new.numberValid(9645035413)