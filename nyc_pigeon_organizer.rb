require "pry"

def nyc_pigeon_organizer(data)
  
  new_hash = data.each_with_object({}) do |(key, value), final_array| 
    #binding.pry
    value.each do |inner_key, names| #for each value in data...
      names.each do |name| #for each value in those values...
        #binding.pry
        if !final_array[name] #if this name is not in the final array already
          final_array[name] = {} #add this name as a hash to final array 
        end
        if !final_array[name][key] #if that name, going back up two levels, doesn't have that key...  
          final_array[name][key] = [] #add that key to this name hash of the final array, as an empty array
        end
        final_array[name][key].push(inner_key.to_s) #add the inner key from up a level into this array.
      end
    end
  end
  #binding.pry
end


