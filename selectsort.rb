#!/usr/bin/env ruby
# -*- ruby -*-

class Sort

def mysort(m) #find the smallest item in the array & add it to the output arr

endarr = [] #initialize output array

return [] if m == [] #catches empty input

while m.size > 0 do  #as long as the array is populated it will keep going
  checkval, valspot = m.first, 0 #grab the first element

  m.each_with_index { |i,spot|    #check it against all other elements
    if i < checkval
      checkval, valspot = i, spot #assign any value found to be lower
    end
  }
  
  endarr<<checkval      #push the lowest remaining value onto the end of the output array
  m.delete_at(valspot)  #remove that element from the main array

end

return endarr           #spit out the output array once each item has been checked

end
end