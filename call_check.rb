class CallCheck
  
  def method_missing(method_name, *args, &block)
    @phoneString = method_name[/\d+/].to_s
    @phoneNumber = method_name[5..method_name.length] 
    @lengthOfNum = @phoneString.length
    if @phoneString != @phoneNumber
        return "invalid number"
    else
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
end


