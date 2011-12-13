class CalcController < ApplicationController

  def new
    

    if params["commit"] == "="
      znak = params["one"].scan(/[+-]/)
      tmp = Array.new

      for f in 0..params["one"].length-1
        tmp << ""
      end

      j = 0
      while j < params["one"].length-1
        if params["one"][j] == "+"
          j = j+1
        else
          tmp[j] = tmp[j] + params["one"][j]
        end 
      end

      @rez = 0
      for i in 1..tmp.length-1
      
        if i == 1 
          @rez = tmp[0].to_i
        end
      

        if znak[i-1] == "+" 
          @rez = @rez + tmp[i].to_i
        end
       

        if znak[i-1] == "-" 
          @rez = @rez - tmp[i].to_i
        end
      

      end
      
    end

    if params["commit"] == "+"
      @calc = params["one"] + "+"
    end

    if params["commit"] == "="

    end
    
    
  end




def calc
 
end

end
