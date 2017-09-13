class CallCheck
  
  def method_missing(method_name, *args, &block)
     @phoneString = method_name[5..method_name.length]
     # puts @phoneString
     @lengthOfNum = @phoneString.length
     # puts @lengthOfNum
     if @lengthOfNum == 11
        if @phoneString.start_with? '0484' 
           return "valid number"
        else
           return "invalid number"
        end
        
     elsif @lengthOfNum == 10
        if (@phoneString.start_with? '7')||(@phoneString.start_with? '8' )|| 
                                              (@phoneString.start_with? '9')
           return "valid number"
        else
           return  "invalid number"
        end
    else
        return "invalid number"        
    end            
   end
end


